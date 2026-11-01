#!/usr/bin/env python3
"""Offline fallback for transcribe.py when the Whisper model cannot be downloaded
(huggingface blocked by the sandbox proxy). Builds episodes/dayN/transcript.json
from script.txt + narration.wav using ffmpeg silencedetect: sentence starts are snapped
to silence ends by DP, words are spread proportionally inside each sentence.
Accuracy: sentence starts good, some scene cuts can be off up to ~1s. Eyeball review.png.
usage: MSD_WORK=/path/to/msd-work align_transcript.py N
"""
import json, os, re, subprocess, sys
N = int(sys.argv[1]); D = os.path.abspath(os.environ.get("MSD_WORK", "msd-work")) + f"/episodes/day{N}"
dur = float(subprocess.check_output(["ffprobe","-v","error","-show_entries","format=duration","-of","csv=p=0",f"{D}/narration.wav"]))
out = subprocess.run(f"ffmpeg -i {D}/narration.wav -af silencedetect=n=-35dB:d=0.12 -f null - 2>&1", shell=True, capture_output=True, text=True).stdout
st = [float(x) for x in re.findall(r"silence_start: ([\d.]+)", out)]
en = [float(x) for x in re.findall(r"silence_end: ([\d.]+)", out)]
txt = open(f"{D}/script.txt").read().split("\n", 2)[2]
sents = []
for para in txt.split("\n"):
    para = re.sub(r"<\w+>", "", para).strip()
    if para: sents += [s for s in re.split(r"(?<=[.:])\s+", para) if s]
sw = [s.split() for s in sents]; cw = [sum(len(re.sub(r"\W", "", x)) for x in s) for s in sw]
n, tot = len(sents), sum(cw)
speech_end = st[-1] if st and st[-1] > dur * 0.8 else dur
t0 = en[0] if en and en[0] < 1 else 0.0
pred, c = [], 0
for x in cw: pred.append(t0 + c / tot * (speech_end - t0)); c += x
cands = sorted(set([t0] + en)); INF = 1e9
dp = [[INF] * len(cands) for _ in range(n)]; bp = [[0] * len(cands) for _ in range(n)]; dp[0][0] = 0
for i in range(1, n):
    best, bj = INF, 0
    for j in range(len(cands)):
        if j >= 1 and dp[i-1][j-1] < best: best, bj = dp[i-1][j-1], j - 1
        if best < INF: dp[i][j] = best + abs(pred[i] - cands[j]); bp[i][j] = bj
j = min(range(len(cands)), key=lambda j: dp[n-1][j]); starts = [0] * n
for i in range(n - 1, -1, -1): starts[i] = cands[j]; j = bp[i][j]
ends = starts[1:] + [speech_end]; res = []
for s, a, b in zip(sw, starts, ends):
    ss = [x for x in st if a < x <= b]; b2 = ss[-1] if ss else b
    tw = sum(len(re.sub(r"\W", "", x)) or 1 for x in s); c = 0
    for x in s:
        l = len(re.sub(r"\W", "", x)) or 1
        res.append({"text": x, "start": round(a + c / tw * (b2 - a), 2), "end": round(a + (c + l) / tw * (b2 - a), 2)}); c += l
json.dump(res, open(f"{D}/transcript.json", "w"), indent=0)
print("wrote", f"{D}/transcript.json", len(res), "words")

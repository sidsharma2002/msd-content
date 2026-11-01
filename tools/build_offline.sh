#!/usr/bin/env bash
# Offline-safe copy of skill build.sh: uses system Chromium (remotion.media blocked), fixes nb_frames parse bug.
# usage: build_offline.sh N      final renders for episodes/dayN (run preview first; this is the slow part).
# Serial by default with a timestamped progress line per stage (MSD_PAR=1 renders the two videos in parallel: only on 4+ CPUs).
#   reel_9x16.mp4  linkedin_4x3.mp4  linkedin_thumb.png  cover.png  flow_4x3.mp4  flow_4x3.gif
set -euo pipefail
N=$1
W="${MSD_WORK:-$PWD/msd-work}"
D=$W/episodes/day$N
E=$D/src/entry.tsx
cd "$W"
R="./node_modules/.bin/remotion"; BX="--browser-executable=${CHROMIUM:-/opt/pw-browsers/chromium} --gl=swangle"
mkdir -p "$D/check"
T0=$(date +%s)
say() { echo "[$(( $(date +%s) - T0 ))s] $*"; }
render() { # id out [extra flags]
  local id=$1 out=$2; shift 2
  say "rendering $id"
  $R render "$E" "$id" "$out" $BX --log=error "$@" > "$D/check/$id.log" 2>&1 || { grep -v "^    at " "$D/check/$id.log" | head; exit 1; }
}
if [ "${MSD_PAR:-0}" = 1 ]; then
  render Msd-D$N-Tall "$D/reel_9x16.mp4" & p1=$!
  render Msd-D$N-Wide "$D/linkedin_4x3.mp4" & p2=$!
  wait $p1 && wait $p2
else
  render Msd-D$N-Tall "$D/reel_9x16.mp4"
  render Msd-D$N-Wide "$D/linkedin_4x3.mp4"
fi
render Msd-D$N-Flow "$D/flow_4x3.mp4" --muted

TF=$(python3 -c "import json;print(round((json.load(open('$D/src/spec.resolved.json'))['starts'][1]-0.5)*30))")
say "stills + gif"
$R still "$E" Msd-D$N-Cover "$D/cover.png" $BX --log=error 2>&1 | { grep -v "^    at " || true; } | head -3
$R still "$E" Msd-D$N-Wide "$D/linkedin_thumb.png" --frame="$TF" $BX --log=error 2>&1 | { grep -v "^    at " || true; } | head -3
cd "$D"
GIFF="fps=20,scale=1200:-1:flags=lanczos,split[a][b];[a]palettegen=max_colors=128:stats_mode=diff[p];[b][p]paletteuse=dither=bayer:bayer_scale=5:diff_mode=rectangle"
ffmpeg -y -loglevel error -i flow_4x3.mp4 -vf "$GIFF" -loop 0 flow_4x3.gif

python3 - "$D" <<'PY'
import os, subprocess, sys
D = sys.argv[1]
def sh(c): return subprocess.run(c, shell=True, capture_output=True, text=True)
def probe(f, what): return sh(f"ffprobe -v error -select_streams v:0 -show_entries {what} -of csv=p=0 {D}/{f}").stdout.strip()
print("--- sizes")
for f, lo, hi in [("reel_9x16.mp4", 0, 100), ("linkedin_4x3.mp4", 4, 10), ("flow_4x3.gif", 0, 15), ("flow_4x3.mp4", 0, 100)]:
    mb = os.path.getsize(f"{D}/{f}") / 1e6
    print(f"{f:20s} {mb:6.2f} MB" + ("" if lo <= mb <= hi else f"   <-- outside {lo}-{hi} MB"))
print("--- durations", {f: probe(f, "format=duration") for f in ("reel_9x16.mp4", "linkedin_4x3.mp4")})
print("--- peak", sh(f"ffmpeg -i {D}/reel_9x16.mp4 -af volumedetect -vn -f null - 2>&1 | grep max_volume").stdout.strip())
nb = int(probe("flow_4x3.mp4", "stream=nb_frames").split(',')[0])
sh(f"ffmpeg -y -loglevel error -i {D}/flow_4x3.mp4 -vf select='eq(n\\,0)' -frames:v 1 {D}/check/f0.png")
sh(f"ffmpeg -y -loglevel error -i {D}/flow_4x3.mp4 -vf select='eq(n\\,{nb-1})' -frames:v 1 {D}/check/fl.png")
r = sh(f"ffmpeg -i {D}/check/f0.png -i {D}/check/fl.png -lavfi psnr -f null - 2>&1 | grep -o 'average:[a-z0-9.]*'").stdout.strip()
print("--- flow loop frame0 vs last", r, "(want > 40 dB)")
PY
say "done"

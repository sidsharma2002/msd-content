# MSD sandbox workarounds (cloud/scheduled runs)

Found on the Day 7 autonomous run. The skill's own scripts assume open internet; the sandbox blocks some hosts.

| Problem | Fix |
|---|---|
| `faster-whisper` "not installed" although pip says installed | pip is `/usr/bin/python3`, pipeline uses `/usr/local/bin/python3`. Use `/usr/local/bin/python3 -m pip install --break-system-packages faster-whisper numpy` |
| Whisper model download 403 (huggingface blocked) | `align_transcript.py N` builds transcript.json offline from silence detection |
| Remotion tries to download Chrome from remotion.media (blocked) | `preview_offline.sh N` and `build_offline.sh N` use `/opt/pw-browsers/chromium` |
| build.sh GIF loop check crashes (`nb_frames` returns `360,`) | fixed in `build_offline.sh` |
| `pipeline.sh` re-calls paid Gemini TTS if `transcript.json` is missing | NEVER rerun pipeline.sh after voice exists but transcript failed. Run `align_transcript.py` (or transcribe.py) first, then pipeline.sh reuses the voice |
| finish.py captions draft adds an "AI voice used." line | delete it (hard rule: no "AI generated/AI voice") |
| IST date | container is UTC; check `TZ=Asia/Kolkata date` before computing "next day" |

Order of a run: pipeline.sh N (voice) -> if transcript fails: align_transcript.py N -> pipeline.sh N (reuses voice; if preview fails use preview_offline.sh N) -> build_offline.sh N (about 15 min, run in background) -> `python3 $S/scripts/finish.py N`.
Env: `export MSD_WORK=$PWD/msd-work`. Day specs live in `dayN/spec.json` (day7 included as a template).

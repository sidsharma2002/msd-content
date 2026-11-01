#!/usr/bin/env bash
# preview.mjs in the work dir downloads Chrome from remotion.media (blocked). Patch it to use system Chromium, then run.
# usage: MSD_WORK=... preview_offline.sh N
set -e
W="${MSD_WORK:-$PWD/msd-work}"; BX="${CHROMIUM:-/opt/pw-browsers/chromium}"
cd "$W"
grep -q browserExecutable preview.mjs || sed -i "s#logLevel: \"error\" }#logLevel: \"error\", browserExecutable: \"$BX\", chromiumOptions:{gl:\"swangle\"} }#g" preview.mjs
node preview.mjs "$1"

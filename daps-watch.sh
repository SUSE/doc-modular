#!/bin/bash

# 
# Build HTML documentation for the specified DC file and rebuild it whenever it
# or any file it references changes.
#

set -u

if [ $# -ne 1 ] || [ ! -f "$1" ]; then
  echo "Usage: $0 <DC-file>" >&2
  exit 1
fi

for cmd in daps inotifywait; do
  command -v "$cmd" >/dev/null || { echo "Missing command: $cmd" >&2; exit 1; }
done

DC_FILE=$1

build() {
  echo "=== $(date +%T) Building $DC_FILE ==="
  daps -d "$DC_FILE" html || echo "*** ERROR: Build failed ***" >&2
}

# DC file plus all source files (XML, entities, images) it references.
list_files() {
  echo "$DC_FILE"
  # list-srcfiles prints everything space-separated on one line
  daps -d "$DC_FILE" list-srcfiles 2>/dev/null | tr " " "\n"
}

build

while true; do
  mapfile -t files < <(list_files | sort -u)
  echo "Watching ${#files[@]} files, press Ctrl+C to stop..."

  # Editors often replace files (move/create), so watch for those events too.
  # Wait for the first event, then wait a bit if multiple files are saved at once.
  inotifywait -q -e modify,close_write,move_self,delete_self,attrib "${files[@]}" >/dev/null 2>&1
  sleep 0.5

  build
done

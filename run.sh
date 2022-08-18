#! /bin/bash
set -euo pipefail

idris2 --source-dir src/ src/Main.idr -o main
java -cp "build/exec/main_app/main.jar:$IDRIS2_PREFIX/*" main.Main

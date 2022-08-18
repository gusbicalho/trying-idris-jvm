#! /bin/bash

idris2 main.idr -o main
java -cp "build/exec/main_app/main.jar:$IDRIS2_PREFIX/*" main.Main

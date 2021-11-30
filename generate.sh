#!/usr/bin/env bash

BIN_PREFIX="fn"
BIN_DIR="bin"

for f in src/*; do
  fn_name=$(echo "$f" | awk -F / '{ print $NF }' | awk -F '.' '{ print $1 }')
  file_name="$BIN_DIR/$BIN_PREFIX.$fn_name"

  echo Creating "$file_name"
  cp "$f" "$file_name"
  chmod +x "$file_name"
done

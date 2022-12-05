#!/usr/bin/env bash

set -eu

args=()
file=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    -*)
      args+=("$1")
      shift
      ;;
    *)
      if [[ -n "$file" ]]; then
        echo "expected a single input file" 2>&1
        exit 1
      fi
      file="$1"
      shift
      ;;
  esac
done

if [ ! -e "$file" ]; then
  echo "$file does not exist" 2>&1
  exit 1
fi

file=$(realpath "$file")
dir=$(dirname "$file")
name=$(basename "$file")

docker run -i -t --rm -v "$dir:/ivy" ivy "${args[@]}" "/ivy/$name"

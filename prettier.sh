#!/usr/bin/env bash

#set -x

changed_files=$(git diff --name-only)

for file in $changed_files; do
  npx prettier --write "$file"
done

staged_files=$(git diff --staged --name-only)

for file in $staged_files; do
  npx prettier --write "$file"
done

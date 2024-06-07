#!/bin/bash

echo -e "\n"
echo ":::$(date +"%Y-%m-%d %T")更新:"
for file in "$@"; do
  echo "- $file"
done
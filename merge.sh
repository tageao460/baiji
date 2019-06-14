#!/usr/bin/env bash

n=$(find . -name "$1.*" | wc -l)

count=0
files=
for((i=0; i<n; ++i)); do
  files="$files $1.$i"
done

cat $files > inception_v3.ckpt

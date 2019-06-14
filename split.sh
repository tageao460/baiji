#!/usr/bin/env bash

sub_file_size=67108864
bytes=$(wc -c <$1)
echo $bytes

filename=$1
count=0

for((i=0; i<bytes; i+=sub_file_size)) {
  echo dd if=$1 of=$1.$count bs=1 skip=$i count=$sub_file_size
  dd if=$1 of=$1.$count bs=1 skip=$i count=$sub_file_size
  count=$((count+1))
}

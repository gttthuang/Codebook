#!/bin/bash
while true; do
  ./random > input
  ./a.out < input > out1
  ./brute < input > out2
  if diff -w out1 out2 > /dev/null; then
    echo "OK"
  else
    echo "WA:"
    cat input
    break
  fi
done
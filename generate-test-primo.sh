#!/bin/bash
NUM=$(( RANDOM % 1000 + 1 ))
echo $NUM > test-primo.in
echo "Gerado teste: $NUM"

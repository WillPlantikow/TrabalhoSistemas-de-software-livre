#!/bin/bash

N=$(( (RANDOM % 4) + 2 ))
echo $N > test-matriz.in

echo "Primeira Matriz (${N}x${N}):"
for (( i=0; i<N; i++ )); do
    ROW_OUTPUT=""
    for (( j=0; j<N; j++ )); do
        RANDOM_NUM=$(( RANDOM % 10 ))
        echo -n "$RANDOM_NUM " >> test-matriz.in
        ROW_OUTPUT="$ROW_OUTPUT$RANDOM_NUM "
    done
    echo "" >> test-matriz.in
    echo "$ROW_OUTPUT"
done

echo ""

echo "Segunda Matriz (${N}x${N}):"
for (( i=0; i<N; i++ )); do
    ROW_OUTPUT=""
    for (( j=0; j<N; j++ )); do
        RANDOM_NUM=$(( RANDOM % 10 ))
        echo -n "$RANDOM_NUM " >> test-matriz.in
        ROW_OUTPUT="$ROW_OUTPUT$RANDOM_NUM "
    done
    echo "" >> test-matriz.in
    echo "$ROW_OUTPUT"
done

OPERATIONS=("a" "s" "m")
OP_INDEX=$(( RANDOM % 3 ))
echo "${OPERATIONS[OP_INDEX]}" >> test-matriz.in

echo ""
echo "test-matriz.in com matrizes ${N}x${N} e operação ${OPERATIONS[OP_INDEX]}."

#!/bin/bash
N=$(( RANDOM % 4 + 2 ))
echo $N > test-matriz.in

for (( i=0; i<N; i++ )); do
    for (( j=0; j<N; j++ )); do
        echo -n "$(( RANDOM % 10 )) " >> test-matriz.in
    done
    echo "" >> test-matriz.in
done

for (( i=0; i<N; i++ )); do
    for (( j=0; j<N; j++ )); do
        echo -n "$(( RANDOM % 10 )) " >> test-matriz.in
    done
    echo "" >> test-matriz.in
done

OPERATIONS=("a" "s" "m")
OP_INDEX=$(( RANDOM % 3 ))
echo "${OPERATIONS[$OP_INDEX]}" >> test-matriz.in
echo "test-matriz.in com matrizes ${N}x${N} e operação ${OPERATIONS[$OP_INDEX]}."

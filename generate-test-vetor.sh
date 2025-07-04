#!/bin/bash
N=$(( RANDOM % 15 + 1 ))
echo $N > test-vetor.in
echo "Gerado teste Tamanho $N e os seguintes elementos:"
for (( i=0; i<N; i++ )); do
    ELEMENT=$(( RANDOM % 1001 ))
    echo $ELEMENT >> test-vetor.in
    echo -n "$ELEMENT "
done
echo ""

#!/bin/bash
N=$(( RANDOM % 15 + 1 ))
echo $N > test-vetor.in
echo "Gerado test-vetor.in com tamanho $N."
echo "Elementos gerados:"
MAIOR_ESPERADO=-2147483648
for (( i=0; i<N; i++ )); do
    ELEMENT=$(( RANDOM % 1001 ))
    echo $ELEMENT >> test-vetor.in
    echo -n "$ELEMENT "
    if (( ELEMENT > MAIOR_ESPERADO )); then
        MAIOR_ESPERADO=$ELEMENT
    fi
done
echo ""
echo "$MAIOR_ESPERADO" > test-vetor.out
echo "test-vetor.out: $MAIOR_ESPERADO"

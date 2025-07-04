#!/bin/bash
N=$(( RANDOM % 4 + 2 ))

echo $N > test-matriz.in

echo "Gerado test-matriz.in com matrizes ${N}x${N}."
echo "Matriz 1:"

for (( i=0; i<N; i++ )); do
    for (( j=0; j<N; j++ )); do
        ELEMENT=$(( RANDOM % 10 ))
        echo -n "$ELEMENT " >> test-matriz.in
        echo -n "$ELEMENT "
    done	
    echo "Matriz 2:"

	
for (( i=0; i<N; i++ )); do
    for (( j=0; j<N; j++ )); do
        ELEMENT=$(( RANDOM % 10 ))
        echo -n "$ELEMENT " >> test-matriz.in
        echo -n "$ELEMENT "
    done
    echo "" >> test-matriz.in
    echo ""
done

OPERATIONS=("a" "s" "m")
OP_INDEX=$(( RANDOM % 3 ))
SELECTED_OP="${OPERATIONS[$OP_INDEX]}"

echo "$SELECTED_OP" >> test-matriz.in
echo "Operação selecionada: $SELECTED_OP"

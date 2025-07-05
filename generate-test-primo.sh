#!/bin/bash
NUM=$(( RANDOM % 1000 + 1 ))
echo $NUM > test-primo.in
echo "Gerado test-primo.in com o número: $NUM"
if (( NUM <= 1 )); then
    EXPECTED_OUTPUT="Não é primo"
elif (( NUM == 2 || NUM == 3 )); then
    EXPECTED_OUTPUT="Primo"
else
    IS_PRIME="Primo"
    for (( i=2; i*i <= NUM; i++ )); do
        if (( NUM % i == 0 )); then
            IS_PRIME="Não é primo"
            break
        fi
    done
    EXPECTED_OUTPUT="$IS_PRIME"
fi
echo "$EXPECTED_OUTPUT" > test-primo.out
echo "test-primo.out: $EXPECTED_OUTPUT"

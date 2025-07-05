# Willian Plantikow de Oliveira

# Testes para Programas em c++ (Primo, Matrizes, Vetor)

  Dentro do projeto contem os 3 programas, cada um com scripts em Bash que geram testes automaticamente e um Make file automatizar a compilação.
Necessario: Compilador em C++ e Bash (Recomendavel: Msys2)

#Estrutura:
├── primo.cpp  
├── vetor.cpp  
├── matriz.cpp  
├── Makefile  
├── generate-test-primo.sh  
├── generate-test-vetor.sh  
├── generate-test-matriz.sh  
├── README.md  

O repositório contém os seguintes arquivos principais:
* `primo.cpp`: Programa C++ para verificar se um número é primo.
* `vetor.cpp`: Programa C++ para encontrar o maior valor em um vetor de inteiros.
* `matriz.cpp`: Programa C++ para realizar operações (soma, subtração, multiplicação) em matrizes.
* `Makefile`: Arquivo para automatizar a compilação dos programas C++.
* `generate-test-primo.sh`: Script Bash para gerar entrada e saída esperada para `primo.cpp`.
* `generate-test-vetor.sh`: Script Bash para gerar entrada e saída esperada para `vetor.cpp`.
* `generate-test-matriz.sh`: Script Bash para gerar entrada de teste para `matriz.cpp`.
* `README.md`: Este arquivo, com informações sobre o projeto.
* `test-primo.in`, `test-primo.out`, `test-vetor.in`, `test-vetor.out`, `test-matriz.in`: Arquivos de exemplo gerados pelos scripts.

# Como Compilar e Executar
Para compilar todos os programas executáveis (`primo`, `vetor`, `matriz`), utilize o comando:

#Primo: (Caso de algum erro, utilize o "#chmod +x generate-test..."
Para visualizar o numero gerado para o teste:
./generate-test-primo.sh

#Matriz: 
Para visualizar as Matrizes geradas para o teste:
./generate-test-matriz.sh
cat test-primo.in

Para visualizar o resultado
./primo < test-primo.in

#Vetor: 
Para visualizar as Matrizes geradas para o teste:
./generate-test-vetor.sh
cat test-vetor.in

Para visualizar o resultado
./primo < test-vetor.in








    

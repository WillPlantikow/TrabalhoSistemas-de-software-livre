#include <iostream>
#include <vector>
using namespace std;

vector<vector<int>> lerMatriz(int n) {
    vector<vector<int>> matriz(n, vector<int>(n));
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            cin >> matriz[i][j];
        }
    }
    return matriz;
}

void imprimirMatriz(const vector<vector<int>>& matriz) {
    for (const auto& linha : matriz) {
        for (int elemento : linha) {
            cout << elemento << " "; 
        }
        cout << endl;
    }
}

vector<vector<int>> somarMatrizes(
    const vector<vector<int>>& A,
    const vector<vector<int>>& B,
    int n) {

    vector<vector<int>> resultado(n, vector<int>(n));
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            resultado[i][j] = A[i][j] + B[i][j];
        }
    }
    return resultado;
}

vector<vector<int>> subtrairMatrizes(
    const vector<vector<int>>& A,
    const vector<vector<int>>& B,
    int n) {

    vector<vector<int>> resultado(n, vector<int>(n));
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            resultado[i][j] = A[i][j] - B[i][j];
        }
    }
    return resultado;
}

vector<vector<int>> multiplicarMatrizes(
    const vector<vector<int>>& A,
    const vector<vector<int>>& B,
    int n) {

    vector<vector<int>> resultado(n, vector<int>(n, 0)); 

    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            for (int k = 0; k < n; ++k) {
                resultado[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    return resultado;
}

int main() {
    int n;
    cin >> n; 

    vector<vector<int>> matrizA = lerMatriz(n);
    vector<vector<int>> matrizB = lerMatriz(n);

    char operacao;
    cin >> operacao; 

    vector<vector<int>> resultado;

    if (operacao == 'a') {
        resultado = somarMatrizes(matrizA, matrizB, n);
    } else if (operacao == 's') {
        resultado = subtrairMatrizes(matrizA, matrizB, n);
    } else if (operacao == 'm') {
        resultado = multiplicarMatrizes(matrizA, matrizB, n);
    } else {
        return 1;
    }

    cout << "Matriz A:" << endl;
    imprimirMatriz(matrizA);

    cout << "Matriz B:" << endl;
    imprimirMatriz(matrizB);

    cout << "Matriz Resultante:" << endl;
    imprimirMatriz(resultado);

    return 0;
}
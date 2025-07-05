#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n;

    cin >> n;

    vector<int> vetor(n);

    for (int i = 0; i < n; ++i) {
        cin >> vetor[i];
    }

    if (n > 0) {
        int maior_valor = vetor[0];

        for (int i = 1; i < n; ++i) {
            if (vetor[i] > maior_valor) {
                maior_valor = vetor[i];
            }
        }
        cout << "O maior valor no vetor e: " << maior_valor << endl;
    } else {
        cout << "O vetor esta vazio." << endl;
    }

    return 0;
}

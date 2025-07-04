#include <iostream> 
#include <cmath> 
using namespace std;

int main() {
    int numero; 

   
    cout << "Digite um numero inteiro: ";
    cin >> numero;

    
    if (numero <= 1) {
        cout << "Nao e primo" << endl;
    } else {
        bool ePrimo = true; 

        for (int i = 2; i <= sqrt(numero); ++i) {
            if (numero % i == 0) { 
                ePrimo = false; 
                break; 
            }
        }

        if (ePrimo) {
            cout << "Primo" << endl;
        } else {
            cout << "Nao e primo" << endl;
        }
    }

    return 0;
}
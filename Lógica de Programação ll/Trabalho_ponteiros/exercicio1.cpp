#include <iostream>

void trocarValores(int *ponteiro1, int *ponteiro2) {
    int temp = *ponteiro1;
    *ponteiro1 = *ponteiro2;
    *ponteiro2 = temp;
}

int main() {
    int a = 55;
    int b = 10;

    std::cout << "Valores originais: \n";
    std::cout << "a: " << a << "\n";
    std::cout << "b: " << b << "\n";


    trocarValores(&a, &b);

    std::cout << "Valores trocados: \n";
    std::cout << "a: " << a << "\n";
    std::cout << "b: " << b << "\n";

    return 0;
}
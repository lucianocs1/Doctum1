#include <iostream>

int main() {
    int a = 200;
    int b = 200;

    int* ponteiro1 = &a; 
    int* ponteiro2 = &b; 

    if (*ponteiro1 > *ponteiro2) {
        std::cout << "O ponteiro 1 aponta para o valor mais alto: " << *ponteiro1 << std::endl;
    } else if (*ponteiro2 > *ponteiro1) {
        std::cout << "O ponteiro 2 aponta para o valor mais alto: " << *ponteiro2 << std::endl;
    } else {
        std::cout << "Os dois ponteiros apontam para valores iguais: " << *ponteiro1 << std::endl;
    }

    return 0;
}

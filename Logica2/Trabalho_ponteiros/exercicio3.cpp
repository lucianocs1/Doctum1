#include <iostream>

int main() {
    int array[5] = {11, 25, 73, 45, 58};
    int *ponteiro = array;

    std::cout << "Valores do array:\n";
    
    for (int i = 0; i < 5; ++i) {
        std::cout << "Valor " << i+1 << ": " << *ponteiro << std::endl;
        ponteiro++;
    }

    return 0;
}

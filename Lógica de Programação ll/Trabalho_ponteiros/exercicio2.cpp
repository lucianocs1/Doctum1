#include <iostream>

int main() {
    char character;
    char* ponteiro = &character; 

    std::cout << "Digite um caractere: ";
    std::cin >> *ponteiro;

    std::cout << "O caractere que voce digitou eh: " << *ponteiro << std::endl;

    return 0;
}

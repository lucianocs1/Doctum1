#include <iostream>

int contarCaracteres(const char* str) {
    int count = 0;
    while (*str != '\0') {
        count++;
        str++;
    }
    return count;
}

int main() {
    const char* minhaString = "Ola, me chamo Luciano!";
    int numCaracteres = contarCaracteres(minhaString);

    std::cout << "A mensagem que voce digitou foi: " << minhaString << std::endl;
    std::cout << "O numero de caracteres na mensagem foi: " << numCaracteres << std::endl;

    return 0;
}

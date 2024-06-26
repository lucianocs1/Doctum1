#include <iostream>
#include <string>

using namespace std;

struct Estacao {
    string nome;
    Estacao* proximo;

    Estacao(const string& nome) : nome(nome), proximo(nullptr) {}
};

class LinhaMetro {
private:
    Estacao* inicio; 

public:
    LinhaMetro() : inicio(nullptr) {}

    
    void adicionarEstacao(const string& nome) {
        Estacao* novaEstacao = new Estacao(nome);
        
        if (inicio == nullptr) {
            inicio = novaEstacao;
        } else {
            Estacao* temp = inicio;
            while (temp->proximo != nullptr) {
                temp = temp->proximo;
            }
            temp->proximo = novaEstacao;
        }
        cout << "Estacao '" << nome << "' adicionada na linha de metro." << endl;
    }

    
    void removerEstacao(const string& nome) {
        if (inicio == nullptr) {
            cout << "Linha de metro esta vazia. Nao ha estacoes para remover." << endl;
            return;
        }

        Estacao* atual = inicio;
        Estacao* anterior = nullptr;

       
        while (atual != nullptr && atual->nome != nome) {
            anterior = atual;
            atual = atual->proximo;
        }

        
        if (atual == nullptr) {
            cout << "Estacao '" << nome << "' nao encontrada na linha de metro." << endl;
            return;
        }

       
        if (anterior == nullptr) {
            inicio = atual->proximo;
        } else {
            anterior->proximo = atual->proximo;
        }

        delete atual;
        cout << "Estacao '" << nome << "' removida da linha de metro." << endl;
    }

    
    void exibirEstacoes() {
        if (inicio == nullptr) {
            cout << "Linha de metro esta vazia." << endl;
        } else {
            cout << "Estacoes na linha de metro:" << endl;
            Estacao* temp = inicio;
            while (temp != nullptr) {
                cout << "- " << temp->nome << endl;
                temp = temp->proximo;
            }
        }
    }

    
    ~LinhaMetro() {
        
        Estacao* atual = inicio;
        Estacao* proximo = nullptr;
        while (atual != nullptr) {
            proximo = atual->proximo;
            delete atual;
            atual = proximo;
        }
    }
};

int main() {
    LinhaMetro linha;

    int opcao;
    string nomeEstacao;

    do {
        cout << "\nOperacoes disponiveis:" << endl;
        cout << "1 - Adicionar estacao" << endl;
        cout << "2 - Remover estacao" << endl;
        cout << "3 - Exibir estacoes na linha" << endl;
        cout << "0 - Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1:
                cout << "Digite o nome da estacao a ser adicionada: ";
                cin.ignore();
                getline(cin, nomeEstacao);
                linha.adicionarEstacao(nomeEstacao);
                break;
            case 2:
                cout << "Digite o nome da estacao a ser removida: ";
                cin.ignore();
                getline(cin, nomeEstacao);
                linha.removerEstacao(nomeEstacao);
                break;
            case 3:
                linha.exibirEstacoes();
                break;
            case 0:
                cout << "Saindo do programa." << endl;
                break;
            default:
                cout << "Opcao invalida. Tente novamente." << endl;
                break;
        }
    } while (opcao != 0);

    return 0;
}

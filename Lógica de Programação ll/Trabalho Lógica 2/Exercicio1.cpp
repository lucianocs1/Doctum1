#include <iostream>
#include <queue>  

using namespace std;

class Banco {
private:
    queue<int> fila;  

public:
    
    void adicionarCliente(int cliente_id) {
        fila.push(cliente_id);
        cout << "Cliente " << cliente_id << " adicionado na fila." << endl;
    }

    
    void atenderCliente() {
        if (fila.empty()) {
            cout << "Nao ha clientes para atender." << endl;
        } else {
            int cliente_id = fila.front();
            fila.pop();
            cout << "Cliente " << cliente_id << " atendido e removido da fila." << endl;
        }
    }

    
    void exibirFila() {
        if (fila.empty()) {
            cout << "Fila de espera esta vazia." << endl;
        } else {
            cout << "Clientes na fila de espera:" << endl;
            queue<int> temp = fila;  
            while (!temp.empty()) {
                cout << "Cliente " << temp.front() << endl;
                temp.pop();
            }
        }
    }
};

int main() {
    Banco banco;
    int opcao, cliente_id;

    do {
        cout << "\nOperacoes disponiveis:" << endl;
        cout << "1 - Adicionar cliente" << endl;
        cout << "2 - Atender cliente" << endl;
        cout << "3 - Exibir fila de espera" << endl;
        cout << "0 - Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1:
                cout << "Digite o ID do cliente a ser adicionado: ";
                cin >> cliente_id;
                banco.adicionarCliente(cliente_id);
                break;
            case 2:
                banco.atenderCliente();
                break;
            case 3:
                banco.exibirFila();
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

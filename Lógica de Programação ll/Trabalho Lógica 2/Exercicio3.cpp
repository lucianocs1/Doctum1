#include <stdio.h>
#include <stdlib.h>

struct Prato {
    int numero;         
    struct Prato *prox; 
};

struct Prato *topo = NULL;

void adicionarPrato(int numero) {
    struct Prato *novoPrato = (struct Prato *)malloc(sizeof(struct Prato));
    if (novoPrato == NULL) {
        printf("Erro: falha ao alocar memória para o novo prato.\n");
        return;
    }

    novoPrato->numero = numero;
    novoPrato->prox = topo;

    topo = novoPrato;

    printf("Prato %d adicionado à pilha.\n", numero);
}

void removerPrato() {
    if (topo == NULL) {
        printf("Pilha de pratos está vazia. Nenhum prato para remover.\n");
        return;
    }

    struct Prato *pratoRemovido = topo;
    topo = topo->prox;

    printf("Prato %d removido da pilha.\n", pratoRemovido->numero);

    free(pratoRemovido);
}

void exibirPratos() {
    if (topo == NULL) {
        printf("Pilha de pratos está vazia.\n");
        return;
    }

    printf("Pratos na pilha:\n");
    struct Prato *atual = topo;
    while (atual != NULL) {
        printf("%d\n", atual->numero);
        atual = atual->prox;
    }
}

int main() {
    int opcao, numeroPrato;

    do {
        printf("\nOperacoes disponiveis:\n");
        printf("1 - Adicionar prato\n");
        printf("2 - Remover prato\n");
        printf("3 - Exibir pratos na pilha\n");
        printf("0 - Sair\n");
        printf("Escolha uma opcao: ");
        scanf("%d", &opcao);

        switch (opcao) {
            case 1:
                printf("Digite o numero do prato a ser adicionado: ");
                scanf("%d", &numeroPrato);
                adicionarPrato(numeroPrato);
                break;
            case 2:
                removerPrato();
                break;
            case 3:
                exibirPratos();
                break;
            case 0:
                printf("Saindo do programa.\n");
                break;
            default:
                printf("Opcao invalida. Tente novamente.\n");
                break;
        }
    } while (opcao != 0);

    return 0;
}

package java9_EstruturaDados;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class Lista01Exercicio01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        Queue<String> fila = new LinkedList<>();

        Scanner sc = new Scanner(System.in);

        int opcao;

        do {
            System.out.println("Menu:");
            System.out.println("1: Adicionar um novo Cliente na fila");
            System.out.println("2: Listar todos os Clientes na fila");
            System.out.println("3: Chamar (retirar) uma pessoa da fila");
            System.out.println("0: Sair do programa");
            System.out.println("Digite uma opção:");

            opcao = sc.nextInt();

            switch (opcao) {
                case 1:
                    System.out.println("Digite o nome:");
                    String nome = sc.next();
                    fila.add(nome);
                    System.out.println("Fila:");
                    System.out.println(fila);
                    System.out.println("Cliente Adicionado!");
                    break;
                case 2:
                    System.out.println("Lista de Clientes na Fila:");
                    System.out.println(fila);
                    break;
                case 3:
                    if (fila.isEmpty()) {
                        System.out.println("A Fila está vazia!");
                    } else {
                        String chamado = fila.remove();
                        System.out.println("Fila:");
                        System.out.println(fila);
                        System.out.println("O Cliente foi Chamado!");
                    }
                    break;
                case 0:
                    System.out.println("Programa Finalizado!");
                    break;
                default:
                    System.out.println("Opção inválida!");
                    break;
            }
        } while (opcao != 0);

        sc.close();
    }
}

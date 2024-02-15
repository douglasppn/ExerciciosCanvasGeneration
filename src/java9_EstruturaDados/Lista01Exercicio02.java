package java9_EstruturaDados;

import java.util.Scanner;
import java.util.Stack;

public class Lista01Exercicio02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
        Stack<String> pilha = new Stack<>();
        int opcao;
        do {
            System.out.println("Menu:");
            System.out.println("1: Adicionar um novo livro na pilha");
            System.out.println("2: Listar todos os livros da pilha");
            System.out.println("3: Retirar um livro da pilha");
            System.out.println("0: Sair do programa");
            System.out.print("Digite a sua opção: ");
            opcao = sc.nextInt();
            switch (opcao) {
                case 1:
                    System.out.print("Digite o nome do livro: ");
                    sc.nextLine();
                    String livro = sc.nextLine();
                    pilha.push(livro);
                    System.out.println("Livro " + livro + " adicionado na pilha.");
                    break;
                case 2:
                    if (pilha.isEmpty()) {
                        System.out.println("A pilha está vazia.");
                    } else {
                        System.out.println("Livros da pilha:");
                        for (String l : pilha) {
                            System.out.println(l);
                        }
                    }
                    break;
                case 3:
                    if (pilha.isEmpty()) {
                        System.out.println("A pilha está vazia.");
                    } else {
                        String livroRemovido = pilha.pop(); 
                        System.out.println("Livro " + livroRemovido + " retirado da pilha.");
                    }
                    break;
                case 0:
                    System.out.println("Programa finalizado.");
                    break;
                default:
                    System.out.println("Opção inválida.");
                    break;
            }
        } while (opcao != 0);
        sc.close();
    }
}
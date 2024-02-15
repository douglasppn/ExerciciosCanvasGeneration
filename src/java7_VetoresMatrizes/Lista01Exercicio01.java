package java7_VetoresMatrizes;

import java.util.Scanner;

public class Lista01Exercicio01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Crie um vetor com 10 números inteiros não ordenados e não repetidos
        int[] vetor = {2, 5, 1, 3, 4, 9, 7, 8, 10, 6};

        // Solicite ao usuário que digite um número
        Scanner scanner = new Scanner(System.in);
        System.out.print("Digite o número que você deseja encontrar: ");
        int numeroBuscado = scanner.nextInt();

        // Pesquise o número no vetor
        boolean encontrado = false;
        int posicao = -1; // Inicialize com um valor inválido

        for (int i = 0; i < vetor.length; i++) {
            if (vetor[i] == numeroBuscado) {
                encontrado = true;
                posicao = i;
                break; // Encontrou, não precisa continuar a busca
            }
        }
        
        // Fechando o scanner
        scanner.close();

        // Exiba o resultado
        if (encontrado) {
            System.out.println("O número " + numeroBuscado + " está localizado na posição: " + posicao);
        } else {
            System.out.println("O número " + numeroBuscado + " não foi encontrado!");
        }
    }
}

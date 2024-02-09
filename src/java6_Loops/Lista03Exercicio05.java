package java6_Loops;

import java.util.Scanner;

public class Lista03Exercicio05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner = new Scanner(System.in);

        int somaPositivos = 0;
        int numero;

        do {
            System.out.print("Digite um número (ou 0 para sair): ");
            numero = scanner.nextInt();

            if (numero > 0) {
                somaPositivos += numero;
            }
        } while (numero != 0);

        System.out.println("\nA soma dos números positivos é: " + somaPositivos);

        // Fechando o scanner
        scanner.close();
    }
}

package java6_Loops;

import java.util.Scanner;

public class Lista02Exercicio03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner = new Scanner(System.in);

        int menorQue21 = 0;
        int maiorQue50 = 0;

        while (true) {
            System.out.print("Digite uma idade (ou -1 para sair): ");
            int idade = scanner.nextInt();

            if (idade == -1) {
                break; // Encerrar a leitura
            }

            if (idade < 21) {
                menorQue21++;
            } else if (idade > 50) {
                maiorQue50++;
            }
        }

        System.out.println("\nTotal de pessoas menores de 21 anos: " + menorQue21);
        System.out.println("Total de pessoas maiores de 50 anos: " + maiorQue50);

        // Fechando o scanner
        scanner.close();
    }
}
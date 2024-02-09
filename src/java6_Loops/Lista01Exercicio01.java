package java6_Loops;

import java.util.Scanner;

public class Lista01Exercicio01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);

        // Entrada de dados
        System.out.print("Digite o primeiro número do intervalo: ");
        int primeiroNumero = entrada.nextInt();

        System.out.print("Digite o último número do intervalo: ");
        int ultimoNumero = entrada.nextInt();

        // Verificação do intervalo
        if (primeiroNumero >= ultimoNumero) {
            System.out.println("Intervalo inválido!");
            System.exit(0); // Sair do programa
        }

        // Laço de repetição for para mostrar os múltiplos de 3 e 5
        System.out.println("No Intervalo entre " + primeiroNumero + " e " + ultimoNumero + ":");
        for (int i = primeiroNumero; i <= ultimoNumero; i++) {
            if (i % 3 == 0 && i % 5 == 0) {
                System.out.println(i + " é múltiplo de 3 e 5");
            }
        }

        // Fechando o scanner
        entrada.close();
    }
}
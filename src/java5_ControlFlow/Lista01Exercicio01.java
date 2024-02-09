package java5_ControlFlow;

import java.util.Scanner;

public class Lista01Exercicio01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        Scanner entrada = new Scanner(System.in);

        System.out.println("Informe o valor de A:");
        int A = entrada.nextInt();

        System.out.println("Informe o valor de B:");
        int B = entrada.nextInt();

        System.out.println("Informe o valor de C:");
        int C = entrada.nextInt();
        
        entrada.close();

        int somaAB = A + B;

        if (somaAB > C) {
            System.out.println("A soma de A + B é maior que C.");
        } else if (somaAB < C) {
            System.out.println("A soma de A + B é menor que C.");
        } else {
            System.out.println("A soma de A + B é igual a C.");
        }
    }
}

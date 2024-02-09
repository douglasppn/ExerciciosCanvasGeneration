package java5_ControlFlow;

import java.util.Scanner;

public class Lista01Execicio2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);

        System.out.print("Digite um número inteiro: ");
        int numero = entrada.nextInt();
        
        entrada.close();

        if (numero % 2 == 0) {
            System.out.print("O Número " + numero + " é par");
        } else {
            System.out.print("O Número " + numero + " é ímpar");
        }

        if (numero > 0) {
            System.out.println(" e positivo!");
        } else if (numero < 0) {
            System.out.println(" e negativo!");
        } else {
            System.out.println("!");
        }
    }
}
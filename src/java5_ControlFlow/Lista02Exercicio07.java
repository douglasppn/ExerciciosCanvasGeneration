package java5_ControlFlow;

import java.util.Locale;
import java.util.Scanner;

public class Lista02Exercicio07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		Locale.setDefault(Locale.ENGLISH);

        System.out.print("Digite o 1º número: ");
        float numero1 = entrada.nextFloat();

        System.out.print("Digite o 2º número: ");
        float numero2 = entrada.nextFloat();

        System.out.print("Operação (1 - Soma, 2 - Subtração, 3 - Multiplicação, 4 - Divisão): ");
        int codigoOperacao = entrada.nextInt();
        
        entrada.close();
        
        double resultado;

        switch (codigoOperacao) {
            case 1:
                resultado = numero1 + numero2;
                System.out.printf("%.1f + %.1f = %.1f%n", numero1, numero2, resultado);
                break;
            case 2:
                resultado = numero1 - numero2;
                System.out.printf("%.1f - %.1f = %.1f%n", numero1, numero2, resultado);
                break;
            case 3:
                resultado = numero1 * numero2;
                System.out.printf("%.1f * %.1f = %.1f%n", numero1, numero2, resultado);
                break;
            case 4:
                if (numero2 != 0) {
                    resultado = numero1 / numero2;
                    System.out.printf("%.1f / %.1f = %.1f%n", numero1, numero2, resultado);
                } else {
                    System.out.println("Divisão por zero não é permitida.");
                }
                break;
            default:
                System.out.println("Operação Inválida!");
        }
    }
}
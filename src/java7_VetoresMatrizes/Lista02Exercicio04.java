package java7_VetoresMatrizes;

import java.util.Scanner;

public class Lista02Exercicio04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Defina o tamanho da matriz (10 participantes x 4 bimestres)
        int participantes = 10;
        int bimestres = 4;

        // Crie a matriz para armazenar as notas
        double[][] notas = new double[participantes][bimestres];

        // Preencha a matriz com as notas dos participantes
        Scanner scanner = new Scanner(System.in);
        for (int i = 0; i < participantes; i++) {
            System.out.println("Digite as notas do participante " + (i + 1) + ":");
            for (int j = 0; j < bimestres; j++) {
                notas[i][j] = scanner.nextDouble();
            }
        }
        
        // Fechando o scanner
        scanner.close();

        // Calcule as médias de cada participante e armazene em um vetor
        double[] medias = new double[participantes];
        for (int i = 0; i < participantes; i++) {
            double soma = 0;
            for (int j = 0; j < bimestres; j++) {
                soma += notas[i][j];
            }
            medias[i] = soma / bimestres;
        }

        // Exiba as médias de cada participante
        System.out.println("\nMédias dos participantes:");
        for (int i = 0; i < participantes; i++) {
            System.out.printf("Participante %d: %.1f\n", (i + 1), medias[i]);
        }
    }
}

package java6_Loops;

import java.util.Scanner;
import java.util.Random;

public class Exemplo {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();

        int numeroAleatorio = random.nextInt(100); // Gera um número aleatório entre 0 e 100
        int AdivinhacaoJogador1;
        int AdivinhacaoJogador2;
        int tentativasJogador1 = 0;
        int tentativasJogador2 = 0;
        final int MAX_TENTATIVAS = 10; // Defina o número máximo de tentativas aqui

        System.out.println("Bem-vindo ao Jogo de Adivinhação para 2 Jogadores!");
        System.out.println("Jogador 1, tente adivinhar o número entre 0 e 100.");
        System.out.println("Para sair, digite -1.");

        do {
            System.out.print("Jogador 1, digite seu palpite: ");
            AdivinhacaoJogador1 = scanner.nextInt();
            tentativasJogador1++;

            if (AdivinhacaoJogador1 == -1) {
                System.out.println("Jogador 1 saiu do jogo. O número correto era " + numeroAleatorio + ".");
                break;
            } else if (AdivinhacaoJogador1 == numeroAleatorio) {
                System.out.println("Parabéns, Jogador 1! Você acertou em " + tentativasJogador1 + " tentativas.");
                break;
            } else {
                if (AdivinhacaoJogador1 < numeroAleatorio) {
                    System.out.println("Tente um número maior, Jogador 1.");
                } else {
                    System.out.println("Tente um número menor, Jogador 1.");
                }
            }

            if (tentativasJogador1 >= MAX_TENTATIVAS) {
                System.out.println("Jogador 1 atingiu o limite de tentativas. O número correto era " + numeroAleatorio + ".");
                break;
            }
        } while (AdivinhacaoJogador1 != numeroAleatorio);

        // Segundo jogador
        System.out.println("\nAgora é a vez do Jogador 2!");
        System.out.println("Jogador 2, tente adivinhar o número entre 0 e 100.");
        System.out.println("Para sair, digite -1.");

        do {
            System.out.print("Jogador 2, digite seu palpite: ");
            AdivinhacaoJogador2 = scanner.nextInt();
            tentativasJogador2++;

            if (AdivinhacaoJogador2 == -1) {
                System.out.println("Jogador 2 saiu do jogo. O número correto era " + numeroAleatorio + ".");
                break;
            } else if (AdivinhacaoJogador2 == numeroAleatorio) {
                System.out.println("Parabéns, Jogador 2! Você acertou em " + tentativasJogador2 + " tentativas.");
                break;
            } else {
                if (AdivinhacaoJogador2 < numeroAleatorio) {
                    System.out.println("Tente um número maior, Jogador 2.");
                } else {
                    System.out.println("Tente um número menor, Jogador 2.");
                }
            }

            if (tentativasJogador2 >= MAX_TENTATIVAS) {
                System.out.println("Jogador 2 atingiu o limite de tentativas. O número correto era " + numeroAleatorio + ".");
                break;
            }
        } while (AdivinhacaoJogador2 != numeroAleatorio);

        scanner.close();
    }
}

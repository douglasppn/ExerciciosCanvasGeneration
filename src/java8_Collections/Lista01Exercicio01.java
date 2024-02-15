package java8_Collections;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class Lista01Exercicio01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner teclado = new Scanner(System.in);

		ArrayList<String> cores = new ArrayList<String>();

		String cor;

		for (int i = 0; i < 5; i++) {

			System.out.println("Digite uma cor:");

			cor = teclado.nextLine();

			cores.add(cor);
		}

		teclado.close();

		System.out.println("Listar todas as cores:");

		for (String c : cores) {

			System.out.println(c);
		}

		System.out.println("Ordenar as cores:");

		Collections.sort(cores);

		for (String c : cores) {

			System.out.println(c);
		}
	}
}

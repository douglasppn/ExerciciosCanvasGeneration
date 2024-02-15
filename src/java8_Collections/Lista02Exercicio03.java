package java8_Collections;

import java.util.Scanner;
import java.util.Set;
import java.util.HashSet;
import java.util.Iterator;

public class Lista02Exercicio03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        Scanner teclado = new Scanner(System.in);

        Set<Integer> valores = new HashSet<Integer>();

        int valor;

        for (int i = 0; i < 10; i++) {
            
            System.out.println("Digite um valor inteiro:");

            valor = teclado.nextInt();

            valores.add(valor);
        }

        teclado.close();

        System.out.println("Listar dados do Set:");

        Iterator<Integer> iterador = valores.iterator();

        while (iterador.hasNext()) {
            
            valor = iterador.next();

            System.out.println(valor);
        }
    }
}

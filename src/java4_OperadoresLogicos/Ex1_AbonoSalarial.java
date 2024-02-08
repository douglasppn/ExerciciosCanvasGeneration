package java4_OperadoresLogicos;

import java.util.Scanner;

public class Ex1_AbonoSalarial {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		float salario = 0.0f;
		float abono = 0.0f;
		float novoSalario = 0.0f;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Digite o salario:");
		salario = sc.nextFloat();
		
		//sc.next();
		
		System.out.println("Digite o abono:");
		abono = sc.nextFloat();
		
		sc.close();
		
		novoSalario = salario + abono;
		
		System.out.println("Novo Salario: " +novoSalario);
	}

}

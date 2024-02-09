package java5_ControlFlow;

import java.util.Scanner;

public class Lista02Exercicio05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);

        System.out.print("Digite o código do produto (de 1 a 6): ");
        int codigoProduto = entrada.nextInt();

        System.out.print("Digite a quantidade comprada: ");
        int quantidade = entrada.nextInt();

        double precoUnitario;
        String nomeProduto;
        
        entrada.close();

        switch (codigoProduto) {
            case 1:
                precoUnitario = 10.00;
                nomeProduto = "Cachorro Quente";
                break;
            case 2:
                precoUnitario = 15.00;
                nomeProduto = "X-Salada";
                break;
            case 3:
                precoUnitario = 18.00;
                nomeProduto = "X-Bacon";
                break;
            case 4:
                precoUnitario = 12.00;
                nomeProduto = "Bauru";
                break;
            case 5:
                precoUnitario = 8.00;
                nomeProduto = "Refrigerante";
                break;
            case 6:
                precoUnitario = 13.00;
                nomeProduto = "Suco de laranja";
                break;
            default:
                System.out.println("Código de produto inválido.");
                return;
        }

        double valorTotal = quantidade * precoUnitario;

        System.out.println("Produto: " + nomeProduto);
        System.out.printf("Valor total: R$ %.2f%n", valorTotal);
    }
}
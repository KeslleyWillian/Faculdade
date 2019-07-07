/*
Nome: Leandro Costa Garcia
RGA: 201811316013

Crie duas Classes: Carro e Motor. A classe carro deve possuir alguns atributos obrigatórios como: 

    ligado, do tipo boolean; 
    parado, também do tipo boolean; 
    velocidade atual e; 
    velocidade máxima do tipo int; 
    nome e fabricante do tipo String. 
    Atributo do "tipo" Motor (objeto da classe Motor). 

No método construtor da classe Carro, deve-se passar o nome do fabricante, o nome do carro e as cilindradas do motor, sendo que serão três possíveis 1.0, 1.6 e 2.0. Também, no método construtor da classe Carro, será instanciado o atributo motor que terá como parâmetro do método construtor as cilindradas. 

As cilindradas do motor definirá a velocidade máxima do carro. Sendo:

     120Km para 1.0;
    180Km para 1.6 e; 
    220Km para 2.0. 

Todos os atributos, com exceção do nome do carro e nome do fabricante devem estar encapsulados. 

A classe carro deve possuir os seguintes métodos: 

    Ligar; 
    Aumentar a Velocidade; 
    Diminuir a Velocidade; 
    Desligar; 
    Status.

A implementação dos métodos deve obedecer os requisitos:

    O carro só poderá ser ligado uma vez. Caso o método seja chamado, e o carro encontra-se ligado, deve-se avisar que o carro já encontra-se ligado;
    O método Aumentar Velocidade deve aumentar a velocidade em 20Km cada vez que for chamado, não podendo passar da velocidade máxima. Caso esteja na velocidade máxima, deverá informar que o carro já encontra-se na velocidade máxima;
    O método Diminuir Velocidade diminuirá a velocidade atual em 20Km cada vez que for chamado. Se chegar a zero, o carro deve ser considerado como parado; 
    Se o carro estiver parado e o método Diminuir Velocidade for chamado, deve ser informado que o carro já encontra-se parado;
    O carro só poderá ser desligado se estivar parado;
    Todos os métodos devem retornar uma mensagem de feedback informando se a execução do método deu certo ou não;
    O método status deve exibir todas as informações do carro, ex: nome, fabricante, se está parado em movimento, velocidade atual, máxima, motor, etc.

*/
package viajando;

import classes.Carro;
import java.io.IOException;
import java.util.Scanner;

public class Viajando {

    public static void main(String[] args) throws IOException {
        int menu = 0;
        String nome;
        String fabricante;
        int opt = 0;
        double cilindradas = 0;
        
        Scanner input = new Scanner(System.in);
        System.out.print("Qual o nome do carro \n /> ");
        nome = input.next();
        System.out.print("Qual o fabricante \n />");
        fabricante = input.next();
        System.out.print("Cilindradas \n \t 1) 1.0 \n \t 2) 1.6 \n \t 3) 2.0 \n/>");
        while ( opt < 4 ) {
            opt = input.nextInt();
            if ( opt == 1 ) {
                cilindradas = 1.0;
                break;
            } else if ( opt == 2 ){
                cilindradas = 1.6;
                break;
            } else if ( opt == 3 ) {
                cilindradas = 2.0;
                break;
            } else {
                System.out.print("Opção inválidada! \n \t 1) 1.0 \n \t 2) 1.6 \n \t 3) 2.0 \n/>");
                opt = 0;
            }
        }
        Carro c1 = new Carro(nome, fabricante, cilindradas);
        
        menu = menu();
        while ( menu < 9 ) {
            if ( menu == 1 ) {
                c1.Status();
                menu = menu();
            } else if ( menu == 2 ) {
                c1.Ligar();
                menu = menu();
            } else if ( menu == 3 ) {
                c1.AumentarVelocidade();
                menu = menu();
            } else if ( menu == 4 ) {
                c1.DimunuirVelocidade();
                menu = menu();
            } else if ( menu == 5 ) {
                c1.Desligar();
                menu = menu();
            } else {
                System.out.println("Opção inválida.");
                menu();
            }
        }
        System.out.println("Obrigado por acessar.");
    }
    
    public static void clearConsole(){
        for (int i = 0; i < 30; i++) {
            System.out.println("\n");
        }
    }
    
    public static int menu() {
        System.out.println(" 1) Status");
        System.out.println(" 2) Ligar o carro");
        System.out.println(" 3) Aumentar Velocidade");
        System.out.println(" 4) Diminuir Velocidade");
        System.out.println(" 5) Desligar o carro");
        System.out.println(" 9) Sair");
        System.out.println(" O que deseja fazer ?");
        System.out.print("/> ");
        Scanner s = new Scanner(System.in);
        int opt = s.nextInt();
        return opt;
    }
}




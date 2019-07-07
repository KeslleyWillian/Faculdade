/*
Nome: Leandro Costa Garcia
RGA: 201811316013

Crie uma classe Conta com as seguintes características: 

    - número da conta; 
    - saldo; 
    - operação de saque e;
    - operação de depósito.

A partir da classe Conta (superclasse), crie as seguintes subclasses:

    Conta Poupança:
        - Dia de rendimento;
        - Taxa de rendimento;
        - Operação de saldo (calculado de forma atualizada).
    Conta Especial:
        - Valor do limite especial;
        - Operação de saldo completa (exibindo também o limite);
        - Operação de saque (permitindo sacar também o limite).

*/

package herancaconta;

import classes.Especial;
import java.util.Scanner;
import classes.Poupanca;
import java.util.Set;

public class HerancaConta {
    
    public static void main(String[] args) {
        int menu = 0;
        int contacriada;
        //Conta nova = new Conta();
        Poupanca poupanca = new Poupanca();
        Especial nova = new Especial();
        while ( menu < 9 ) {
           contacriada = nova.getNumeroconta();
           if ( menu == 0 ){
                    if( contacriada == 0 ){
                        menu = menu(contacriada);
                    } else {
                        menu = menu(contacriada);
                    }
            } else if (menu == 1) {
                if( contacriada == 0 ){
                    System.out.println(" Criando conta 123 \n Saldo inicial R$ 1000.0"+"\n---\n");
                    nova.setNumeroconta(123);
                    nova.setSaldo(1000);
                    nova.setLimiteEspecial(1000);
                    poupanca.setDiaRend(5);
                    poupanca.setTxRend(0.00018);
                    
                } else {
                    System.out.println(" A conta já foi criada!"+"\n---\n");
                }
                menu = 0;
            } else if (menu == 2) {
                if( contacriada == 0 ){
                    System.out.println(" A conta não foi criada"+"\n---\n");
                } else {
                    mostrarSaldo(nova);
                }
                menu = 0;
            } else if (menu == 3) {
                if( contacriada == 0 ){
                    System.out.println(" A conta não foi criada"+"\n---\n");
                } else {
                    double novoValorSaque = valorInput(0);
                    nova.saque(novoValorSaque);
                    System.out.println(" "+nova.getMsg()+"\n---\n");
                }
                menu = 0;
            } else if (menu == 4) {
                if( contacriada == 0 ){
                    System.out.println(" A conta não foi criada"+"\n---\n");
                } else {
                    double novoValor = valorInput(1);
                    nova.deposito(novoValor);
                    System.out.println(" "+nova.getMsg()+"\n---\n");
                }
                menu = 0;
            } else if (menu == 5) {
                if( contacriada == 0 ){
                    System.out.println(" A conta não foi criada"+"\n---\n");
                } else {
                    double novoValor = valorInput(1);
                    nova.saque(novoValor);
                    if (nova.getMsg() != "A conta não tem saldo para essa retirada."){
                        poupanca.deposito(novoValor);
                        System.out.println(" "+poupanca.getMsg()+"\n---\n");
                    } else {
                        System.out.println(" "+nova.getMsg()+"\n---\n");
                    }
                }
                menu = 0;
            } else if (menu == 6) {
                if( contacriada == 0 ){
                    System.out.println(" A conta não foi criada"+"\n---\n");
                } else {
                    System.out.println("Resumo da Poupança");
                    System.out.println("Dia rendimento: "+poupanca.getDiaRend());
                    System.out.println("Taxa diária de rendimento: "+(poupanca.getTxRend()*100)+"%");
                    System.out.println("Saldo: "+poupanca.qualSaldo());
                }
                menu = 0;
            } else {
                System.out.println(" Opção inválida.");
                menu = 0;
            }
        }
        System.out.println(" Obrigado pelo acesso!");
    }
    
    public static void mostrarSaldo (Especial parametro1) {
        System.out.println(" Conta: "+parametro1.getNumeroconta()+ 
            " \n Saldo: "+parametro1.getSaldo()+
            " \n Limite: "+parametro1.getLimiteEspecial()+
            "\n---\n");
    }
    
    public static void mostrarMsg (Especial parametro1) {
        System.out.println(parametro1.getMsg()+"\n---\n");
    }
    
    public static int menu(int contaCriada) {
        if (contaCriada == 0) {
            System.out.println(" Menu Conta Corrente");
            System.out.println(" 1) Criar Conta");
        } else {
            System.out.println(" Conta Corrente: "+contaCriada);
        }
        System.out.println(" 2) Ver Saldo");
        System.out.println(" 3) Realizar Saque");
        System.out.println(" 4) Realizar Deposito");
        System.out.println(" 5) Investir na Poupança :)~");
        System.out.println(" 6) Saldo Poupança");
        System.out.println(" 9) Sair");
        System.out.println("---");
        System.out.println(" O que deseja fazer ?");
        System.out.print("/> ");
        Scanner s = new Scanner(System.in);
        int opt = s.nextInt();
        return opt;
    }
    
    public static double valorInput(int opt) {
        if ( opt == 0 ) {
            System.out.println("Qual o valor do saque?");
            System.out.print("/> "); 
        } else {
            System.out.println("Qual o valor do depósito?");
            System.out.print("/> "); 
        }
        Scanner s = new Scanner(System.in);
        double val = s.nextDouble();
        return val;
    }
}

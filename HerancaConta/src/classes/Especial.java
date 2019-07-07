package classes;

import java.util.Scanner;

public class Especial extends Conta{
    private double limiteEspecial;
    
    @Override
    public double qualSaldo(){
        double resultado = this.getSaldo();
        resultado += this.getLimiteEspecial();
        
        return resultado;
    }
    
    @Override
    public void saque(double retiraValor){
        double novoSaldo = this.getSaldo();
        double limite = this.getLimiteEspecial();
        double total = novoSaldo + limite;
        
        if (total >= retiraValor) {
            if (novoSaldo >= retiraValor) {
                novoSaldo = novoSaldo - retiraValor;
            } else {
                retiraValor = retiraValor - novoSaldo;
                novoSaldo = novoSaldo - novoSaldo;
                limite = limite - retiraValor;
            }
            total = novoSaldo + limite;
            this.setSaldo(novoSaldo);
            this.setLimiteEspecial(limite);
            this.setMsg("Saque realizado com sucesso! \n Novo saldo: R$ "+getSaldo()+"\n Novo Limite: R$ "+getLimiteEspecial());
        } else {
            this.setMsg("A conta não tem saldo para essa retirada.");
        }
    }
        
    @Override
    public void deposito(double valorDeposito){
        double novoSaldo = this.getSaldo();
        double novoLimite = this.getLimiteEspecial();
        if(novoLimite < 1000){
            int opt = -1;
            while (opt < 2) {
                System.out.println(" Deseja pagar o limite? 0 = Não 1 = Sim");
                Scanner s = new Scanner(System.in);
                opt = s.nextInt();
                if (opt == 1) {
                    novoLimite = 1000 - novoLimite;
                    valorDeposito = valorDeposito - novoLimite;
                    this.setLimiteEspecial(1000);
                    novoSaldo += valorDeposito;
                    opt = 3;
                } else if (opt == 0){
                    novoSaldo += valorDeposito;
                    opt = 3;
                } else {
                    System.out.println("Opção inválida.\n Deseja pagar o limite? 0 = Não 1 = Sim");
                }
            }
        } else {
            novoSaldo += valorDeposito;
        }
        this.setSaldo(novoSaldo);
        this.setMsg("Depósito realizado com sucesso! \n Novo saldo: R$ "+getSaldo()+"\n Novo Limite: R$ "+getLimiteEspecial());
    }
    public double getLimiteEspecial() {
        return limiteEspecial;
    }

    public void setLimiteEspecial(double limiteEspecial) {
        this.limiteEspecial = limiteEspecial;
    }
    
}

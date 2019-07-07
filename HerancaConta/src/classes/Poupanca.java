package classes;

import java.util.Scanner;

public class Poupanca extends Conta {
    int diaRend;
    double txRend;
    
    @Override
    public double qualSaldo(){
        int diaAtual;
        System.out.println(" Qual o dia atual? 1-31");
        Scanner s = new Scanner(System.in);
        diaAtual = s.nextInt();
        
        double resultado = this.getSaldo();
        diaRend = this.getDiaRend();
        if (diaAtual >= diaRend) {
            resultado += resultado * ((diaAtual - diaRend) * txRend);
        }
        return resultado;
    }
    
    @Override
    public void deposito(double valorDeposito){
        double novoSaldo = this.getSaldo();
        novoSaldo += valorDeposito;
        this.setSaldo(novoSaldo);
        this.setMsg("Investimento realizado com sucesso! \n Novo saldo: R$ "+getSaldo());
    }
    
    public int getDiaRend() {
        return diaRend;
    }

    public void setDiaRend(int diaRend) {
        this.diaRend = diaRend;
    }

    public double getTxRend() {
        return txRend;
    }

    public void setTxRend(double txRend) {
        this.txRend = txRend;
    }
}

package classes;

public class Conta {
    private int numeroconta;
    private double saldo;
    private String msg;
    
    public double qualSaldo(){
        return saldo;
    }
    
    public void saque(double retiraValor){
        this.msg = "";
        double novoSaldo = this.getSaldo();
        if ( novoSaldo < retiraValor ) {
            this.msg = "O saldo é inferior ao valor de saque e não pode ser realizado!";
        } else {
            novoSaldo -= retiraValor;
            this.setSaldo(novoSaldo);
            this.msg = "Saque Realizado! \n Novo saldo: R$"+getSaldo();
        }
    }
    
    public void deposito(double valorDeposito){
        this.msg = "";
        double novoSaldo = this.getSaldo();
        novoSaldo += valorDeposito;
        this.setSaldo(novoSaldo);
        this.msg = "Depósito realizado com sucesso! \n Novo saldo: R$"+getSaldo();
    }

    public int getNumeroconta() {
        return numeroconta;
    }

    public void setNumeroconta(int numeroconta) {
        this.numeroconta = numeroconta;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
        
}

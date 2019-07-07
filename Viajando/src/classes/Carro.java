package classes;

import static viajando.Viajando.clearConsole;

public class Carro {
    private boolean ligado = false;
    private boolean parado = true;
    private int velocidade;
    private int velMaxima;
    String nome;
    String fabricante;
    Motor tipo;
      
    public Carro(String nome, String fabricante, double cilindradas) {
        this.tipo = new Motor(cilindradas);
        this.nome = nome;
        this.fabricante = fabricante;
        this.velMaxima = tipo.maxVelocidade;
    }
    
    public void Ligar(){
        if( !this.ligado ) {
            System.out.println("Carro Ligado!");
            this.ligado = true;
            this.parado = true;
            
        } else {
            System.out.println("O carro já está ligado.");
        }     
    }

    public void AumentarVelocidade(){
        int novaVelocidade = this.velocidade + 20;
        if (!this.ligado) {
            System.out.println("O carro está desligado, não há como alterar a velocidade.");
        } else if (novaVelocidade <= this.velMaxima && this.ligado) {
            this.velocidade = novaVelocidade;
            System.out.println("Velocidade: "+this.velocidade+" km/h");
            this.parado = false;
        } else {
            System.out.println("Velocidade: "+this.velocidade+" km/h");
            System.out.println("Velocidade Máxima atingida");
        }   
    }
    
    public void DimunuirVelocidade(){
        int novaVelocidade = this.velocidade - 20;
        if (novaVelocidade <= 0 && this.ligado) {
            this.velocidade = 0;
            System.out.println("Velocidade: "+this.velocidade+" km/h");
            System.out.println("Carro Parado");
            this.parado = true;
        } else {
            if ( !this.ligado ) {
                System.out.println("O carro está desligado, não há como alterar a velocidade.");
            } else {
                this.velocidade -= 20;
                System.out.println("Velocidade: "+this.velocidade+" km/h");
            }
        }   
    }
    
    public void Desligar(){
        if( this.ligado && this.velocidade == 0 ) {
            System.out.println("Carro Desligado!");
            this.ligado = false;
            this.parado = true;
            
        } else if (this.velocidade > 0){
            System.out.println("O carro está em movimento não pode ser desligado.");
        } else if ( !this.ligado ) {
            System.out.println("O carro já está desligado!");
        }
    }
    
    public void Status(){
        String std;
        if (this.ligado && !this.parado){
            std = "O carro está ligado e em movimento.";
        } else if (this.ligado && this.parado){
            std = "O carro está ligado e parado.";
        } else if (!this.ligado && this.parado) {
            std = "O carro está desligado e parado.";
        } else{
            std = "";
        }
        Animacao();
        System.out.println("\nCarro:\t\t\t"+this.nome);
        System.out.println("Fabricante:\t\t"+this.fabricante);
        System.out.println("Velocidade Máxima: \t"+this.velMaxima+" km/h");
        System.out.println("Velocidade Atual: \t"+this.velocidade+" km/h");
        System.out.println("Motor:\t\t\t"+tipo.cilindradas+" cilindradas");
        System.out.println(std+"\n");
    }
    
    public void Animacao(){
        if (!this.ligado){
            clearConsole();
            System.out.println("*                  *         *          *          ");				
            System.out.println("          *       _________     __   	            ");
            System.out.println("  *           ___´---`+´---`--__´                  ");
            System.out.println("        *    (  --`____|____´ --|)   *             ");
            System.out.println(" _____________`(())_________(())´__________________ ");
            System.out.println("");
            try {
                Thread.sleep(1000);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (this.ligado && this.parado){
            for (int i = 0; i < 3; i++) {
                clearConsole();
                System.out.println("*                  *         *          *          ");				
                System.out.println("          *       _________     __   	            ");
                System.out.println("  *           ___´---`+´---`--__´                  ");
                System.out.println("        *    (  --`____|____´ --|)   *             ");
                System.out.println(" _____________`(())_________(())´__________________ ");
                System.out.println("");
                try {
                    Thread.sleep(300);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                clearConsole();
                System.out.println("*                  *         *          *          ");				
                System.out.println("          *       _________     __   	            ");
                System.out.println("  *   VRUM    ___´---`+´---`--__´                  ");
                System.out.println("        *    (  --`____|____´ --|)   *             ");
                System.out.println(" _____________`(())_________(())´__________________ ");
                System.out.println("");
                try {
                    Thread.sleep(500);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } else if (this.ligado && !this.parado){
            int vel = 10000 / this.getVelocidade();
            for (int i = 0; i < 5; i++) {
                clearConsole();
                System.out.println("*                  *         *          *          ");				
                System.out.println("          *       _________     __   	            ");
                System.out.println("  *           ___´---`+´---`--__´                  ");
                System.out.println("        *    (  --`____|____´ --|)   *             ");
                System.out.println(" _____________`(())_________(())´__________________ ");
                System.out.println("");
                try {
                    Thread.sleep(vel);
                } catch (Exception e) {
                    e.printStackTrace();
                }

                clearConsole();
                System.out.println("   *                  *         *          *        ");				
                System.out.println("             *     _________     __                 ");
                System.out.println("     *         ___´---`+´---`--__´                  ");
                System.out.println("           *  (  --`____|____´ --|)      *          ");
                System.out.println(" ______________`(())_________(())´_________________ ");
                System.out.println("");
                try {
                    Thread.sleep(vel);
                } catch (Exception e) {
                    e.printStackTrace();
                }

                clearConsole();
                System.out.println("      *                  *         *          *     ");				
                System.out.println("                * _________     __                 ");
                System.out.println("        *     ___´---`+´---`--__´   *              ");
                System.out.println("             (  --`____|____´ --|)         *       ");
                System.out.println(" _____________`(())_________(())´__________________ ");
                System.out.println("");
                try {
                    Thread.sleep(vel);
                } catch (Exception e) {
                    e.printStackTrace();
                }

                clearConsole();
                System.out.println("         *                  *         *          *  ");				
                System.out.println("                   _________     __                 ");
                System.out.println("           *   ___´---`+´---`--__´       *          ");
                System.out.println("              (  --`____|____´ --|)            *    ");
                System.out.println(" ______________`(())_________(())´_________________ ");
                System.out.println("");
                try {
                    Thread.sleep(vel);
                } catch (Exception e) {
                    e.printStackTrace();
                }

                clearConsole();
                System.out.println("            *                  *         *         ");				
                System.out.println("                  _________     __                 ");
                System.out.println("              ___´---`+´---`--__´      *           ");
                System.out.println("             (  --`____|____´ --|)                *");
                System.out.println(" _____________`(())_________(())´__________________ ");
                System.out.println("");
                try {
                    Thread.sleep(vel);
                } catch (Exception e) {
                    e.printStackTrace();
                }

                clearConsole();
                System.out.println("               *                  *         *       ");				
                System.out.println("                   _________     __    *            ");
                System.out.println("               ___´---`+´---`--__´             *    ");
                System.out.println("              (  --`____|____´ --|)                 ");
                System.out.println(" ______________`(())_________(())´_________________ ");
                System.out.println("");
                try {
                    Thread.sleep(vel);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
    public boolean isLigado() {
        return ligado;
    }

    public void setLigado(boolean ligado) {
        this.ligado = ligado;
    }

    public boolean isParado() {
        return parado;
    }

    public void setParado(boolean parado) {
        this.parado = parado;
    }

    public int getVelocidade() {
        return velocidade;
    }

    public void setVelocidade(int velocidade) {
        this.velocidade = velocidade;
    }

    public int getVelMaxima() {
        return velMaxima;
    }

    public void setVelMaxima(int velMaxima) {
        this.velMaxima = velMaxima;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getFabricante() {
        return fabricante;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }
    
}

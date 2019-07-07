package classes;

public class Motor {
    double cilindradas;
    int maxVelocidade;

    public Motor(double cilindradas) {
        if (cilindradas == 1.0){
            this.cilindradas = cilindradas;
            this.maxVelocidade = 120;
        }
        if (cilindradas == 1.6){
            this.cilindradas = cilindradas;
            this.maxVelocidade = 180;
        }
        if (cilindradas == 2.0){
            this.cilindradas = cilindradas;
            this.maxVelocidade = 220;
        }
    }
    
}

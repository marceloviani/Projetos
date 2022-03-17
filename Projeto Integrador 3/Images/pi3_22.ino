#include <Ultrasonic.h>
 
#define pino_trigger 8
#define pino_echo 9
#define Pot1 A0
#define Pot2 A1
#define Pot3 A2

#define Amostras 5

int Acelerador=0;
int Freio=0;
int Volante=0;
int Velocidade=0;

Ultrasonic ultrasonic(pino_trigger, pino_echo);


void setup() {
  Serial.begin(9600);
}

void loop() {
  
  //Le as informacoes do sensor ultrassonico em cm
  float cmMsec;
  long microsec = ultrasonic.timing();
  cmMsec = ultrasonic.convert(microsec, Ultrasonic::CM);

  //Le as informacoes dos potenciometros
  Acelerador = map(analogRead(Pot1), 0, 1023, 0, 100);
  Freio = map(analogRead(Pot2), 0, 500, 0, 1);
  Volante = map(analogRead(Pot3), 0, 1023, -180, 180);


  Velocidade = map(cmMsec, 0, 2000, 0, 400);
 
  Serial.print("Velocidade: ");
  Serial.print( mediaMovel(Velocidade) );
  Serial.print("\t");
  Serial.print("Acelerador: ");
  Serial.print( Acelerador );
  Serial.print("\t");
  Serial.print("Freio: ");  // 0 = Livre; 50 = Acionado
  Serial.print( Freio );
  Serial.print("\t");
  Serial.print("Volante: ");
  Serial.println( Volante );

  delayMicroseconds(100); 

}



float mediaMovel(int Vel){      // Filtro implementado para remover ruidos
  static  int leituras[Amostras];
  static  int pos = 0;
  static  long soma=0;
  static  float media = 0;
  static  bool zera = 1;
  
  if (zera){
    for(int i=0; i<= Amostras; i++){
      leituras[i] = 0;
    }
    zera = 0;
  }

  soma = Vel - leituras[pos%Amostras] + soma;
  leituras[pos%Amostras] = Vel;
  media = (float)soma/(float)(Amostras);
  pos = (pos+1)%Amostras;
  return((double)media);
}

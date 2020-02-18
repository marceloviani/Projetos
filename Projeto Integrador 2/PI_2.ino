#include <Arduino.h>
#include <NewPing.h>
#include <Wire.h>

#include "MLX90615.h"
#include <I2cMaster.h>

#define SDA_PIN A4   //define the SDA pin
#define SCL_PIN A5   //define the SCL pin

SoftI2cMaster i2c(SDA_PIN, SCL_PIN);
MLX90615 mlx90615(DEVICE_ADDR, &i2c);

//  Presença:
int pinoSensor1 = 2; //PINO DIGITAL UTILIZADO PELO SENSOR 1
int pinoSensor2 = 3; //PINO DIGITAL UTILIZADO PELO SENSOR 2
int pinoSensor3 = 4; //PINO DIGITAL UTILIZADO PELO SENSOR 3
int condicao = 0;


//  Cor:
//  Pinos de conexao do modulo TCS230
#define S0 8
#define S1 9
#define S2 10
#define S3 11
#define OUT 12

//  Variaveis que armazenam o valor das cores
int red, green, blue, clean;
int c_red, c_green, c_blue;

//  Distancia
#define TRIGGER_PIN  6  // Arduino pin tied to trigger pin on the ultrasonic sensor.
#define ECHO_PIN     7  // Arduino pin tied to echo pin on the ultrasonic sensor.
#define MAX_DISTANCE 450 // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm.

NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); // NewPing setup of pins and maximum distance.

int    Altura, Volume = 0;
float  r_cil  = 0.0493, r1_con = 0.0142, r2_con = 0.0347;   //raios da garrafa


void setup() {
  Serial.begin(9600);
  Serial.println("PI II");
  Serial.println("Prototipo de Leitura de dados Industrial");
  Serial.println("Alunos:");
  Serial.println("\tBrian Azevedo");
  Serial.println("\tMarcelo Viani");
  pinMode(pinoSensor1, INPUT); //DEFINE O PINO COMO ENTRADA
  pinMode(pinoSensor2, INPUT); //DEFINE O PINO COMO ENTRADA
  pinMode(pinoSensor3, INPUT); //DEFINE O PINO COMO ENTRADA

  pinMode (S0, OUTPUT);
  pinMode (S1, OUTPUT);
  pinMode (S2, OUTPUT);
  pinMode (S3, OUTPUT);
  pinMode (OUT, INPUT);

  digitalWrite (S0, LOW);
  digitalWrite (S1, HIGH);

}

void loop() {

  if (digitalRead(pinoSensor1) == LOW & digitalRead(pinoSensor2) == HIGH  & digitalRead(pinoSensor3) == HIGH) {
    condicao = 1;
  } else if (digitalRead(pinoSensor2) == LOW & digitalRead(pinoSensor1) == HIGH & digitalRead(pinoSensor3) == HIGH) {
    condicao = 2;
  } else if (digitalRead(pinoSensor3) == LOW & digitalRead(pinoSensor1) == HIGH & digitalRead(pinoSensor2) == HIGH) {
    condicao = 3;
  }

  if (condicao == 1) {

    // Temperatura:
    Serial.println("Leitura da Temperatura:");
    Serial.print("Temperatura do Objeto = "); Serial.print(mlx90615.getTemperature(MLX90615_OBJECT_TEMPERATURE));
    Serial.print("*C\nTemperatura do Ambiente = "); Serial.print(mlx90615.getTemperature(MLX90615_AMBIENT_TEMPERATURE));
    Serial.println("*C");
    
  } else if (condicao == 2) {

    // Cor:
    Serial.println("Leitura da Cor:\n");
    if (Volume == 1500) {

      read_color (&red, &green, &blue, &clean);
      c_red = (int)255 * 1.23 * (float)clean / red;
      c_green = (int)255 * 1.18 * (float)clean / green;
      c_blue = (int)255 * 1.4 * (float)clean / blue;
      

      //Verifica se é Puro
      if (108 < c_red && c_red < 125 && 100 < c_green && c_green < 115 && 115 < c_blue && c_blue < 130)
      {
        Serial.println("O Suco está com a Cor Correta");
      }

      /*
       * Por ser muito sensivel o sensor, a parte de medição do volume exato foi comentada, dando apenas a informação se
       * a garrafa esta completamente cheia ou não. Porem o código está pronto
       *
        //Verifica se tem um pouco de agua
        else if (145 < c_red && c_red < 165 && 90 < c_green && c_green < 95 && 90 < c_blue && c_blue < 100)
        {
         Serial.println("Um pouco de agua");
        }

        //Verifica se tem pouco suco
        else if (145 < c_red && c_red < 165 && 80 < c_green && c_green < 90 && 100 < c_blue && c_blue < 120)
        {
         Serial.println("Bastante agua");
        }
        //Verifica se tem so agua
        else if (120 < c_red && c_red < 130 && 95 < c_green && c_green < 105 && 110 < c_blue && c_blue < 130)
        {
         Serial.println("Apenas agua");
        }  */
      else
      {
        Serial.println("A Cor do Suco está fora do Padrão");
      }

      Serial.println("");
    }
    else
      Serial.println("A altura deve estar no Padrão para correta leitura da Coloração");
      
  } else if (condicao == 3) {

    // Distancia:
    unsigned int alt, uS = sonar.ping();
    alt = uS;
    Altura = alt / US_ROUNDTRIP_CM - 3;

    if (Altura >= 23  &&   (Altura <= 51)) {
      Serial.println("Leitura do Volume:");
      //Serial.print("Distancia: ");
      //Serial.print(Altura);
      //Serial.println("cm");

      if ((Altura <= 51)  &&   (Altura > 33)) {           // Cilindro
        //Serial.print("Cilindro");
        Altura = 51 - Altura;
        Volume = M_PI * Altura * pow(10, -2) * pow(r_cil, 2) * 1000000;
      }
      else if ((Altura <= 24)  &&   (Altura >= 23)) {     // Cone
        //Serial.print("Cone");
        Altura = 51 - Altura;
        Volume = 1481 + (((M_PI * (Altura - 26) * pow(10, -2)) / 3) * (pow(r2_con, 2) + r2_con * r1_con + pow(r1_con, 2))) * 1000000;
      }
      else if ((Altura <= 33)  &&   (Altura > 24)) {      // Hiperboloide
        //Serial.print("Hiperboloide");
        switch (Altura) {
          case 33:
            Volume = 1332;
            break;
          case 32:
            Volume = 1361;
            break;
          case 31:
            Volume = 1385;
            break;
          case 30:
            Volume = 1405;
            break;
          case 29:
            Volume = 1422;
            break;
          case 28:
            Volume = 1436;
            break;
          case 27:
            Volume = 1449;
            break;
          case 26:
            Volume = 1463;
            break;
          case 25:
            Volume = 1480;
            break;
        }
      }

      if (Volume == 1500) {
        Serial.println("Nivel do Suco está Correto");
        Serial.print("Volume: ");
        Serial.print(Volume);
        Serial.println("ml");
      }
      else {
        Serial.print("Nivel fora do Padrão");
      }

    }
  }

  condicao = 0;
  Serial.println();
  Serial.println();
  delay(1500);
}



void read_color(int* red, int* green, int* blue, int* clean) {        // Sensor de Cor
  /* Red Filter */
  digitalWrite(S2, LOW);
  digitalWrite(S3, LOW);
  *red = pulseIn(OUT, digitalRead(OUT) == HIGH ? LOW : HIGH);

  /* Green Filter */
  digitalWrite(S2, HIGH);
  digitalWrite(S3, HIGH);
  *green = pulseIn(OUT, digitalRead(OUT) == HIGH ? LOW : HIGH);

  /* Blue Filter */
  digitalWrite(S2, LOW);
  digitalWrite(S3, HIGH);
  *blue = pulseIn(OUT, digitalRead(OUT) == HIGH ? LOW : HIGH);

  /* Clean Filter */
  digitalWrite(S2, HIGH);
  digitalWrite(S3, LOW);
  *clean = pulseIn(OUT, digitalRead(OUT) == HIGH ? LOW : HIGH);
}

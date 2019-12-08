#include <NewPing.h>
#include <Servo.h>
#include "HX711.h"

// HX711.DOUT  - pin #A4
// HX711.PD_SCK - pin #A5

HX711 scale(A4, A5);    // parameter "gain" is ommited; the default value 128 is used by the library



NewPing sonar1(10, 9, 200);
NewPing sonar2(11, 12, 200);
int magnetic, md,  luce1, luce2, distanza1 ;
const int s0 = 3;  
const int s1 = 4;  
const int s2 =7;  
const int s3 = 5;  
const int out = 6; 
const int motorpin = 52;
const int motorpinDC = 50;
Servo motoreservo;   
int frequency = 0;
int color=0;

void setup() {
  // put your setup code here, to run once:
  
  pinMode(A2,INPUT);
  pinMode(A3,INPUT);
  pinMode(A0,INPUT);
  
  Serial.begin(9600);

  pinMode(s0, OUTPUT);  
  pinMode(s1, OUTPUT);  
  pinMode(s2, OUTPUT);  
  pinMode(s3, OUTPUT);  
  pinMode(out, INPUT);   
  motoreservo.attach(motorpin);
  digitalWrite(s0, HIGH);  
  digitalWrite(s1, LOW); 
  pinMode(motorpinDC, OUTPUT);  



  // set HX711
  scale.set_scale(2280.f);                    
  scale.tare();              
}

void loop() {
  // put your main code here, to run repeatedly:



    
    digitalWrite(motorpinDC,LOW);
    magnetic=analogRead(A0);
    luce1=analogRead(A2);
    luce2=analogRead(A3);
    unsigned int distanza1 = sonar1.ping();
    distanza1=distanza1 / US_ROUNDTRIP_CM;
    
    unsigned int distanza2 = sonar2.ping();
    distanza2=distanza2 / US_ROUNDTRIP_CM;


    
    Serial.print(scale.get_units(10)*28.3495231, 1);
    Serial.print(",");
    Serial.print(luce1);
    Serial.print(",");
    Serial.print(luce2);
    Serial.print(",");
    Serial.print(distanza1);
    Serial.print(",");
    Serial.print(distanza2);
    Serial.print(",");
    color = readColor();
    Serial.println("");
    


  
    color=0;
    scale.power_down();          
    delay(5000);
    scale.power_up();


    char a;
    a = Serial.read ();
    switch (a) {
      case '1': // tira su
        motoreservo.write(80);
        Serial.println("SU");
        break;
      case '2': // tira giu
        motoreservo.write(15);
        Serial.println("GIU");
        break;
      case '3': // Ricalcola
        motoreservo.write(60);
        delay(1000);
        motoreservo.write(70);
        Serial.println("Ricalcola");
        break;
      case '4': // Ricalcola
        digitalWrite(motorpinDC,HIGH);
        delay(1000);
        digitalWrite(motorpinDC,LOW);
        Serial.println("sposta");
        break;
      default : // In tutti gli altri casi visualizzo un messaggio
        
        break;
    }

    
}




//Read-Color Function
int readColor() {
  
  //Setting red filtered photodiodes to be read
  digitalWrite(s2, LOW);
  digitalWrite(s3, LOW);
  
  //Reading the output frequency
  frequency = pulseIn(out, LOW);
  int R = frequency;
  
  //Printing the value on the serial monitor
  Serial.print(frequency);  //printing rosso color frequency
  Serial.print(",");
  
  
  //Setting Green filtered photodiodes to be read
  digitalWrite(s2, HIGH);
  digitalWrite(s3, HIGH);
  
  //Reading the output frequency
  frequency = pulseIn(out, LOW);
  int G = frequency;
  
  //Printing the value on the serial monitor
  Serial.print(frequency);  //printing verde color frequency
  Serial.print(",");
  
  
  //Setting Blue filtered photodiodes to be read
  digitalWrite(s2, LOW);
  digitalWrite(s3, HIGH);
  
  //Reading the output frequency
  frequency = pulseIn(out, LOW);
  int B = frequency;
  
  //Printing the value on the serial monitor
  Serial.print(frequency);  //printing blu color frequency
  
  
  
  if(R<260 & R>230 & G<860 & G>800){
    color = 1; // Red
  }
  if(G<420 & G>370 & B<350 & B>305){
    color = 2; // Blue
  }
  if(R<450 & R>420 & G<420 & G>390){
    color = 3; // Green
  }
  return color;  
}

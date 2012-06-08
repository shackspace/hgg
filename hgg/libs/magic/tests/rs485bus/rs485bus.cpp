// tries to send from module 0 to module 3.

#include <Arduino.h>

void setup() {
  Serial.begin(115200);

  // connect Serial1 to send (together with 
  // connect Serial2 to receive
  Serial1.begin(9600);
  Serial2.begin(9600);

  // Connect pin 31 to Serial 1 mode select
  // Connect pin 33 to Serial 2 mode select
  pinMode(31, OUTPUT);
  pinMode(33, OUTPUT);
}

void loop() {
  // for the testing configure serial1 as output and serial2 as input
  digitalWrite(31, HIGH);  // decoder enabled
  digitalWrite(33, LOW);   // receiver enabled.

  Serial.print("Sending: TEST, ");
  Serial1.print("TEST");
  delay(25);
  Serial.print("Receiving: ");
  while(Serial2.available()) {
    Serial.print(Serial2.read(), HEX);
    Serial.print(" ");
  }
  Serial.println(".");


  delay(5);
  digitalWrite(31, LOW);
  delay(500);
}

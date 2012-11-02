// tries to send from module 0 to module 3.

#include <Arduino.h>

void setup() {
  Serial.begin(115200);

  // connect Serial2 to receive
  Serial2.begin(9600);

  // Connect pin 5 to Serial 1 mode select
  pinMode(5, OUTPUT);
}

void loop() {
  // for the testing configure serial1 as output and serial2 as input
  digitalWrite(5, LOW);  // decoder enabled
  
  Serial.println("Sending: TEST");
  Serial2.print("TEST");
  delay(25);
  
  digitalWrite(5, HIGH);
  delay(500);
}

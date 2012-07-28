// tries to send from module 0 to module 3.

#include <Arduino.h>

void setup() {
  Serial.begin(115200);

  // connect Serial2 to receive
  Serial2.begin(9600);

  // Connect pin 5 to Serial 2 mode select
  pinMode(5, OUTPUT);
}

void loop() {
  // for the testing configure serial1 as output and serial2 as input
  digitalWrite(5, HIGH);  // decoder enabled

  char buffer[5] = { 0, 0, 0, 0 };

  for(int tests=0;tests<100;tests++) {

    for(int i=0;i<4;i++) {
      buffer[i] = Serial2.read();
    }

    if(buffer[0] == 'T') {
      break;
    }
  }

  for(int i=0;i<5;i++) {  
    Serial.print(buffer[i]);
  }
  Serial.println();

  digitalWrite(5, LOW);
  delay(500);
}

// try out if the wired or works by pulling the 
// port 3 down. The busmaster should get information
// on that.

#include <Arduino.h>
#include <PISORegister.h>

void setup() {
  pinMode(22, OUTPUT);
  digitalWrite(22, HIGH);
 
  pinMode(2, INPUT);

  Serial.begin(115200);
}

void loop() {
  // set port to high level (default since there's a pull up) and 
  // check if the wired or is high.
  digitalWrite(22, HIGH);
  delay(5);
  int result1 = digitalRead(2);

  // 
  // set port to LOW and check if the wired or is low.
  digitalWrite(22, LOW);
  delay(5);
  int result2 = digitalRead(2);

  // 
  // in case the wired or was the same level as the output port in both cases, 
  // tell the test it was ok.
  if(result1 == HIGH && result2 == LOW) {
    Serial.println("OK");
  } else {
    Serial.println("FAILED");
  }
}

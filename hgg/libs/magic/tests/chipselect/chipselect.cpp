// use the chipselect register to enable card 3

#include <Arduino.h>
#include <SIPORegister.h>

SIPORegister reg(49, 50, 48);

void setup() {
  // set the pin that should carry back the "selected" info 
  // as input pin.
  pinMode(3, INPUT);
  digitalWrite(3, HIGH);

  Serial.begin(115200);
}

void loop() {
  // disable all cards.
  reg.write(0);
  delay(5);
  int result1 = digitalRead(3);

  // enable card 3.
  reg.write(0x08);
  delay(5);
  int result2 = digitalRead(3);

  if(result1 == 0 && result2 == 1) {
    Serial.println("OK");
  } else {
    Serial.println("FAIL");
  }

  delay(500);
}

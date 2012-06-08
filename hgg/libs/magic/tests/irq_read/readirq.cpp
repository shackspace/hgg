// pull down the irq pin on slot 3, then read the irq status 
// register and check if the pin was low for module 3

#include <Arduino.h>
#include <PISORegister.h>

PISORegister piso(6, 7, 4);

void setup() {
  // set the pin that will pull down the IRQ as output
  // initialised a piso to read the status register.
  pinMode(22, OUTPUT);
  digitalWrite(22, HIGH);

  Serial.begin(115200);
}

void loop() {
  // let pin 22 perform low transition (ie IRQ on port 3)
  digitalWrite(22, LOW);
  delay(5);
  int result1 = piso.read();

  // let pin 22 perform a high transition (ie no IRQ on port 3)
  digitalWrite(22, HIGH);
  delay(5);
  int result2 = piso.read();


  Serial.print(result1, HEX);
  Serial.print(",");
  Serial.println(result2, HEX);

  delay(500);
}

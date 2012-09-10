// continously poll the present PISO
// output register state to serial port

#include <Arduino.h>
#include <arch/PISORegister.h>

PISORegister piso(47, 46, 51);

void setup() {
  Serial.begin(115200);
}

void loop() {
  int present = piso.read();  

  Serial.println(present, HEX);
  delay(500);
}

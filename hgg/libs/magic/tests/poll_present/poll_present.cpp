// continously poll the present PISO
// output register state to serial port

#include <Arduino.h>
#include <PISORegister.h>

PISORegister piso(6, 7, 5);

void setup() {
  Serial.begin(115200);
}

void loop() {
  int present = piso.read();  

  Serial.println(present, HEX);
  delay(500);
}

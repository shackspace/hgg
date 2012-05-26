/**
 * Blink
 * Turns on an LED on for one second, then off for one second, repeatedly.
 *
 * This example code is in the public domain.
 */

#include <avr/io.h>

int main() {
  DDRB=0xFF; 
  PORTB=0x00; 

  for(;;) {
    long i;
    PORTB=0x00;
    for(i=0;i<200000;i++);
    
    PORTB=0xff;
	for(i=0;i<100000;i++);
  }
}
//  init();
// 
//  setup(); for(;;);
//  while(1) {
//    loop();
//  }

/*
void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(13, OUTPUT);     
  digitalWrite(13, HIGH);   // set the LED on
}

void loop() {
  while(1) {
    digitalWrite(13, HIGH);   // set the LED on
    delay(200);               // wait for a second
    digitalWrite(13, LOW);    // set the LED off
    delay(2000);               // wait for a second
  }
}*/


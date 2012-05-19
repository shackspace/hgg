// continously poll the present PISO
// output register state to serial port

void setup() {
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  digitalWrite(6,HIGH);
  digitalWrite(7,HIGH);
  
  Serial.begin(115200);
}

void loop() {
  digitalWrite(6,HIGH);
  digitalWrite(6,LOW);
  digitalWrite(6,HIGH);
  
  unsigned int present = 0;
  for(int i=0; i<8; ++i)
  {
    digitalWrite(7,LOW);
    present <<= 1;
    present |= digitalRead(5) ? 1 : 0;
    digitalWrite(7,HIGH);
  }
  Serial.println(present,HEX);
  delay(50);  
}

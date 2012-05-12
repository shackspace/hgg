// simple GPS time pulse measurement
// hadez@shackspace.de
// armin@eulerpfad.com

#define powerpin 4
#define ppsPin 2
#define ppsIrq 0
#define ppsDetectOut 23

#define GPSRATE 4800

volatile unsigned long curMicros = 0; 
volatile unsigned long prevMicros = 0;
volatile int nextPinLevel = LOW;

void ppsIrqHandler()
{
  curMicros = micros(); 
  digitalWrite(ppsDetectOut, nextPinLevel);
}


void setup() 
{ 
  pinMode(powerpin, OUTPUT);
  digitalWrite(powerpin, HIGH);
  
  pinMode(ppsDetectOut, OUTPUT);
  digitalWrite(ppsDetectOut, LOW);
    
  pinMode(ppsPin, INPUT); // irq in
  digitalWrite(ppsPin, LOW); // disable pullup

  attachInterrupt(ppsIrq, ppsIrqHandler, RISING);
   
  Serial.begin(9600);
  Serial1.begin(GPSRATE);
  
  digitalWrite(powerpin, LOW);         // pull low to turn on!
} 
 
void loop()
{
  if(curMicros != prevMicros)
  {
    const unsigned long delta = curMicros - prevMicros;
    prevMicros = curMicros;
    nextPinLevel = nextPinLevel == HIGH ? LOW : HIGH;
    Serial.println( delta );
  }
}

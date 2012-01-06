 
// interrupt pin
#define RAISEPIN   2

// select pins.
#define SELECT_0   3
#define SELECT_1   4
#define SELECT_2   5
#define SELECT_3   6
#define SELECT_4   7
#define MAX_PORTS  5

// control pins.
#define CLKPIN      8
#define READYPIN    9
#define BUSRESET   10
#define MODEPIN    11

// data pin.
#define DATA       12



// state machine state definition.
const short STATE_INIT = 0;
const short STATE_WAIT = 1;
const short STATE_PREPARE_RECEIVE = 2;
const short STATE_RECV_DATA = 4;                // bus to host transfer
const short STATE_RECV_IGNORE = 5;              // bus to bus transfer
const short STATE_RECVCLEANUP = 6;
const short STATE_BUSRESET = 31;

/** 
 * initiators are the device ids, special values are defined here
 */
const short NONE = 15;
const short INVALID = -1;

#define PACKET_MAX_SIZE 32
#define PACKET_NIBBLES (32*8)

#define _log(x) { Serial.print("DBG: state="); Serial.print(state); Serial.print(", Msg: "); Serial.print(x); Serial.println(""); }


/** 
 * the current state 
 */
volatile short state = STATE_INIT;
volatile short initiator = NONE;
volatile short target = NONE;
volatile bool lastClockState;
unsigned short packetBits;
unsigned char packetData[PACKET_MAX_SIZE];



/** 
 * setup the bus 
 */
void busSetup() {
  _log("Reinitialising BUS");
  
  // 
  // goto init state.
  state = STATE_INIT;
  pinMode(CLKPIN, INPUT);
  pinMode(READYPIN, OUTPUT); digitalWrite(READYPIN, LOW);
  pinMode(BUSRESET, OUTPUT); digitalWrite(BUSRESET, HIGH);
  pinMode(MODEPIN, OUTPUT); digitalWrite(MODEPIN, HIGH);
  delay(250);

  // configure select lines for reading.
  configureSelectLinesForReading(true);
  
  // 
  // attach interrupt... 
  pinMode(RAISEPIN, INPUT);
  attachInterrupt(0, interruptHandler, CHANGE);
  
  // 
  // go to wait state.
  state = STATE_WAIT;
  digitalWrite(BUSRESET, LOW);
  digitalWrite(MODEPIN, LOW);
  
  _log("BUS initialised");
}




/** 
 * setup the Microcontroller
 */
void setup() {
  // for communication with a host
  Serial.begin(9600);
  
  // 
  // setup the bus.
  busSetup();
}


/** 
 * configures the select lines for reading or writing.
 */
void configureSelectLinesForReading(bool readMode) {
  if(readMode) {
    pinMode(SELECT_0, INPUT);
    pinMode(SELECT_1, INPUT);
    pinMode(SELECT_2, INPUT);
    pinMode(SELECT_3, INPUT);
    pinMode(SELECT_4, INPUT);
  } else {
    pinMode(SELECT_0, OUTPUT);
    pinMode(SELECT_1, OUTPUT);
    pinMode(SELECT_2, OUTPUT);
    pinMode(SELECT_3, OUTPUT);
    pinMode(SELECT_4, OUTPUT);    
  }
}


int readByte() {
  // reads a single byte.
  return 0;
}


/** 
 * find out who initiated the transfer.
 */
int readInitiator() {
  int result = INVALID;
  int numberOfInitiators = 0;
  
  for(int i=0;i<MAX_PORTS;i++) {
    if(HIGH == digitalRead(SELECT_0 + i)) {
      result = 1+i;
      numberOfInitiators++;
    }
  } 
  
  // 
  // check if there was more than one.
  if(numberOfInitiators != 1) {
    return INVALID;
  }
  
  return result;
}


/** 
 * if this pin changes, so does the state.
 */
void interruptHandler() {
  int newVal = digitalRead(RAISEPIN);

  // 
  // ...
  if(newVal == HIGH) { _log("Interrupt PIN high"); } 
  else { _log("Interrupt PIN low"); }
  
  if(state == STATE_WAIT && newVal == HIGH) {
     // goto state PREPARE_RECV
     state = STATE_PREPARE_RECEIVE;

     // read the initiator.
     initiator = readInitiator();
     if(initiator == INVALID) {
       _log("Target invalid");
       state = STATE_BUSRESET;
       return;
     }

     // read the initiator.
     digitalWrite(MODEPIN, HIGH);

     // enable the device that may send
     configureSelectLinesForReading(false);
     digitalWrite(SELECT_0 - 1 + initiator, HIGH);
     
     // read the target.
     target = readByte();

     // receive or ignore data.
     if(target == NONE) {
       state = STATE_RECV_DATA;
     } else if(target >= 0 && target <= MAX_PORTS) {
       state = STATE_RECV_IGNORE;
       
       // tell other device to receive.
       digitalWrite(SELECT_0 -1 + target, HIGH);
     } else {
       // error, no target. reset.
       state = STATE_BUSRESET;
     }
     
     _log("Going to receive mode");
   } else if((state == STATE_RECV_DATA || state == STATE_RECV_IGNORE) && newVal == LOW) {
     // cleanup after receiving.
     state = STATE_RECVCLEANUP;
   } else {
     state = STATE_BUSRESET;
   }  
}


/** 
 * this callback will be called in the buscleanup phase once after the 
 * bus is ready to use again and once before
 */
void haveReceivedCallback(boolean busCleanToUse) {

}


/** 
 * handle the loop
 */
void loop() {
  
  switch(state) {
    case STATE_WAIT:         // perform anything needed while waiting.
                             break;
                         
    case STATE_RECVCLEANUP:  // clean up after receiving, allow for next interrupt to come.
                             haveReceivedCallback(false);

                             digitalWrite(READYPIN, LOW);
                             digitalWrite(MODEPIN, LOW);
                             state = STATE_WAIT;
                             
                             // configure select lines for reading again
                             configureSelectLinesForReading(true);

                             // callback.
                             haveReceivedCallback(true);
                             break;
                          
    case STATE_BUSRESET:     // perform busreset.
                             busSetup();
                             break;
  }
  
}






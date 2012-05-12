/** 
 * dcf77 decoder 
 * code for constellation / hackerspace global grid
 */

#define PIN_DCF77            4
#define PIN_DCF77_INVERTED   2
#define DEBUG_PIN            8

#define NUMBER_OF_READS     31
#define PREDICTION_WINDOW   40
#define VERIFICATION_WINDOW 30

enum DCF77State {
  Init, 
  PredictWait,
  Verify_0,
  Verify_1  
};

// A simple ringbuffer to hold edge time information (aka millis())
class RingBuffer {
public:
  static const int NumberOfElements = 7;

private:
  unsigned long data[NumberOfElements];  
  int currentElement;
  int numberOfPushs;

public:
  RingBuffer() {
    currentElement = 0;
    numberOfPushs = 0;
  }

  // Add a new entry to the buffer
  void put(unsigned long x) {
    currentElement = (++currentElement) % NumberOfElements;
    numberOfPushs++;
    data[currentElement] = x;
  }

  // Get an entry from the buffer.
  // '0' will get you the most recent entry, '1' the previous, and so on
  unsigned long get(int k) const {
    return data[(currentElement + (NumberOfElements - k)) % NumberOfElements]; 
  }

  // Eeset the buffer
  void reset() {
    currentElement = 0;
    numberOfPushs = 0;
  }

  // Check if the buffer is valid (fully populated)
  bool isValid() const {
    return numberOfPushs >= NumberOfElements;
  }
};

/** 
 * collects bits with the current DCF77 state and decodes the time.
 */
class DCF77BitCollector {
public:
  static const int NumberOfDCF77Bits = 59;

private:
  unsigned char dcf77CycleBits[8];
  int bitsRead;

public:
  DCF77BitCollector() {
    reset();
  }
  
  void reset() {
    bitsRead = 0;
    memset(dcf77CycleBits, 0, 8);
  }

  void putBit(int bit) {
    if(bit > 8) {
      // ignore because there's just 60 Bits for 1 dcf77 frame
      return;
    }

    if(bit == 1) {
      int byteIndex = bitsRead / 8;
      int bitIndex = bitsRead % 8;

      // generate a mask to store dcf77 bits inside the char array
      int mask = (1 << bitIndex);

      // store in the mask.
      dcf77CycleBits[byteIndex] |= mask;
    }

    bitsRead++;
  }
  
  bool readBit(int bitId) {
    int byteIndex = bitId / 8;
    int bitIndex = bitId % 8;
    
    return (dcf77CycleBits[byteIndex] & (1 << bitIndex)) != 0;
  }

  /** 
   * checks if the last information received was consistent)
   */
  bool isValid() {
    // dcf77 frames always start with 0
    return (bitsRead == 59) && (readBit(0) == 0);
  }

  /** 
   * return the hour converted from bcd to an integer.
   */
  int getHour() {
    int ones = readbcd4(readBit(29), readBit(30), readBit(31), readBit(32));
    int tens = readbcd2(readBit(33), readBit(34));
    return 10*tens + ones;
  }
  
  /** 
   * return the minute converted from bcd to int.
   */
  int getMinute() {
    int ones = readbcd4(readBit(21), readBit(22), readBit(23), readBit(24));
    int tens = readbcd3(readBit(25), readBit(26), readBit(27));
    return 10*tens + ones;
  }
  
  /**
   * return the calendar day within the month converted from bcd to int. 
   */
  int getDay() {
    int ones = readbcd4(readBit(36), readBit(37), readBit(38), readBit(39));
    int tens = readbcd2(readBit(40), readBit(41));
    return 10*tens + ones;
  }
  
  /** 
   * reads the day of week.
   */
  int getDayOfWeek() {
    return readbcd3(readBit(42), readBit(43), readBit(44));
  }
  
  /** 
   * get month of year as int converted from bcd
   */
  int getMonth() {
    int ones = readbcd4(readBit(45), readBit(46), readBit(47), readBit(48));
    int tens = readbcd1(readBit(49));
    return 10*tens + ones;
  }
  
  /** 
   * reads the year as int converted from bcd
   */
  int getYear() {
     int ones = readbcd4(readBit(50), readBit(51), readBit(52), readBit(53)); 
     int tens = readbcd4(readBit(54), readBit(55), readBit(56), readBit(57)); 
     return 2000 + 10*tens + ones;
  }
  
  int getBitsRead() {
    return bitsRead;
  }

  bool isMEZ() {
    return readBit(18);
  }
  
private:
  int readbcd4(int a, int b, int c, int d) {
    return ((a & 0x01) << 0) | 
           ((b & 0x01) << 1) | 
           ((c & 0x01) << 2) | 
           ((d & 0x01) << 3);
  }
  
  int readbcd3(int a, int b, int c) {
    return readbcd4(a, b, c, 0);
  }

  int readbcd2(int a, int b) {
    return readbcd4(a, b, 0, 0);
  }  
  
  int readbcd1(int a) {
    return a;
  }
};


// Perform statistical foo using values stored in a ringbuffer
class EdgeStatistics {
  RingBuffer& rb;
  
public:
  EdgeStatistics(RingBuffer& b) : rb(b) { }
  
  // Check if we have valid data to perform predictions
  bool lastEdgeIsValid() const {
    if(!rb.isValid()) {
      return false;
    }
    
    for(int i=0;i<RingBuffer::NumberOfElements-1;i++) {
      unsigned long a = rb.get(i);
      unsigned long b = rb.get(i+1) + 1000;
      
      if( ! timeWithin(a, b-PREDICTION_WINDOW, b+PREDICTION_WINDOW) ) {
        return false;
      }
    }
    
    return true;
  }
  
  // Predict the edge two edges in the future/
  // this is needed because DCF77 will not send the 59th bit, so we have to know
  // the time the 1st one happens after that
  unsigned long predictNextButOneEdgeTime() {
    unsigned long average = 0;
    
    for(int i=0;i<RingBuffer::NumberOfElements-1;i++) {
      unsigned long delta = timeDelta(rb.get(i), rb.get(i+1));
      average += delta;
    }
    
    return rb.get(0) + (2*average) / (RingBuffer::NumberOfElements-1);
  }
  
  // Predicts the time of the next edge / bit
  unsigned long predictNextEdgeTime() {
    unsigned long average = 0;
    
    for(int i=0;i<RingBuffer::NumberOfElements-1;i++) {
      unsigned long delta = timeDelta(rb.get(i), rb.get(i+1));
      average += delta;
    }
    
    return rb.get(0) + average / (RingBuffer::NumberOfElements-1);
  }
  
};



/*
 * register variables.
 */
volatile DCF77State currentState = Init;

// time used by the main loop to start sampling the signal state
unsigned long verify_startTime = 0;

unsigned long predictedEdgeTime = 0;
unsigned long predictedNBWEdgeTime = 0;
RingBuffer fallingEdgeBuffer;
EdgeStatistics es(fallingEdgeBuffer);
DCF77BitCollector lastMinute;
DCF77BitCollector currentMinute;

void setup() {
  // 
  // init serial interface for debugging.
  Serial.begin(115200);

  // 
  // initialise input pins 
  pinMode(PIN_DCF77, INPUT);
//  digitalWrite(PIN_DCF77, HIGH);
  pinMode(PIN_DCF77_INVERTED, INPUT);
//  digitalWrite(PIN_DCF77_INVERTED, HIGH);

  // DEBUG:
  pinMode(DEBUG_PIN, OUTPUT);
  digitalWrite(DEBUG_PIN, LOW);

  // 
  // attach interrupt for finding falling edges
  attachInterrupt(0, interrupt0, FALLING);

  // 
  // DGEUG;: print banner
  Serial.println();
  Serial.println("Staring DCF77 Decoding");
}



/**
 * @return true if now > startTime and take care on wraparound
 */
bool timege(unsigned long a, unsigned long b) {
  return a >= b && a-b <= 60000;
} 

/**
 * @return true if a lies within b, c.
 */
bool timeWithin(unsigned long a, unsigned long Min, unsigned long Max) {
  // @todo overflow
  return (a >= Min && a <= Max) || (Max < Min && (a >= Min || a <= Max));
}

/** 
 * returns the time delta between a and b and handles wraparound.
 */
unsigned long timeDelta(unsigned long current, unsigned long last) {
  return (current >= last) ? (current-last) : (last + (((unsigned long)(-1)) - current));
}

/** 
 * reads n times from IO port and gives best of n result.
 */
int statisticalRead(int port) {
  digitalWrite(DEBUG_PIN, HIGH);
  noInterrupts();
  int numberOfHigh = 0;

  for(int i=0;i<NUMBER_OF_READS;i++) {
    int value = digitalRead(port);
    if(value == HIGH) {
      numberOfHigh++;
    } 
    else {
      numberOfHigh--;
    }
    
    delay(2);
  }

  digitalWrite(DEBUG_PIN, LOW);
  interrupts();
  return numberOfHigh > 0 ? HIGH : LOW;
}


void loop() {
  unsigned long now = millis();

  // 
  // state work
  switch(currentState) {
  case Init: // do nothing, all the magic happens in the interrupt handler
    break;

  case PredictWait: // do nothing, all the magic happens in the interrupt handler
    break;

  case Verify_0: // check if we can already poll the input
    if( timege(now, verify_startTime) ) {
      // poll the port. value should be low here
      int value = statisticalRead(PIN_DCF77_INVERTED);
      if(value == LOW) {
        // okay, set time for verify_1.
        currentState = Verify_1;
        verify_startTime += 80;
      } 
      else {
        // error. set next wait prediction time.
        predictedEdgeTime = es.predictNextEdgeTime();
        predictedNBWEdgeTime = es.predictNextButOneEdgeTime();
        currentState = PredictWait;

        // @todo: fehlerbehandlung.
        Serial.print("x");
      }
    }
    break;

  case Verify_1:     // check if we can already poll the input
    if(timege(now, verify_startTime)) {
      // poll the port, value can be high or low.
      int value = statisticalRead(PIN_DCF77_INVERTED);
      if(value == LOW) {
        currentMinute.putBit(1);
        Serial.print("1");
      } 
      else {
        currentMinute.putBit(0);
        Serial.print("0");
      }

      // start next cycle.
      predictedEdgeTime = es.predictNextEdgeTime();
      predictedNBWEdgeTime = es.predictNextButOneEdgeTime();
      currentState = PredictWait;
    }
    break;
  }
}

/** 
 * called when edge falls.
 */
void interrupt0() {
  // do not allow interrupts while we're handing one already
  noInterrupts();
  
  digitalWrite(DEBUG_PIN, HIGH);
  unsigned long now = millis();
  
  // 
  // are we waiting for an edge and are we within the time window we would expect a valid edge?
  if(currentState == PredictWait && timeWithin(now, predictedEdgeTime-PREDICTION_WINDOW, predictedEdgeTime+PREDICTION_WINDOW)) { 
    fallingEdgeBuffer.put(now);
    predictedEdgeTime = now;
    verify_startTime = now + VERIFICATION_WINDOW;
    currentState = Verify_0;
  }
  // did we maybe "miss" an edge? this happens on the 59th second as specified
  // if yes, just look for the edge after that
  else if(currentState == PredictWait && timeWithin(now, predictedNBWEdgeTime-4*PREDICTION_WINDOW, predictedNBWEdgeTime+4*PREDICTION_WINDOW)) { 
    fallingEdgeBuffer.put(predictedEdgeTime);
    fallingEdgeBuffer.put(now);
    predictedEdgeTime = now;
    verify_startTime = now + VERIFICATION_WINDOW;
    currentState = Verify_0;
    Serial.println("!");
    
    lastMinute = currentMinute;
    if(true && lastMinute.isValid()) {
      Serial.print("Current time: ");
      Serial.print(lastMinute.getYear());
      Serial.print("/");
      Serial.print(lastMinute.getMonth());
      Serial.print("/");
      Serial.print(lastMinute.getDay());
      Serial.print(" - ");
      Serial.print(lastMinute.getHour());
      Serial.print(":");
      Serial.println(lastMinute.getMinute());
    }
    currentMinute.reset();
    
    // @todo: add counter that checks whether we're really missing the 59th and not somethign else
  }
  // something went wrong. reset state and start over
  else if(currentState == PredictWait && timege(now, predictedNBWEdgeTime+2*PREDICTION_WINDOW)) {
    currentState = Init;
    fallingEdgeBuffer.reset();
    Serial.println();
    Serial.println("restart");
  } 

  // 
  // initialisation: find the first correct edge.
  else if(currentState == Init) {
    // 
    // put current time into the ringbuffer
    fallingEdgeBuffer.put(now);
    
    Serial.print("[State=Init] Millis = ");
    Serial.println(now);
    
    // 
    // find out if we have enough statistical data to predict the next falling edge.
    if(es.lastEdgeIsValid()) {
      predictedEdgeTime = es.predictNextEdgeTime();
      predictedNBWEdgeTime = es.predictNextButOneEdgeTime();
      currentState = PredictWait;
      
      Serial.print("[State=Init] predicted next Value: ");
      Serial.print(predictedEdgeTime);
      Serial.print(" / ");
      Serial.println(predictedNBWEdgeTime);
    }
  }

  digitalWrite(DEBUG_PIN, LOW);
  interrupts();
}


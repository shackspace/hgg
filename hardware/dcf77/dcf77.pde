/** 
 * dcf77 decoder 
 * code for constellation / hackerspace global grid
 */

#define PIN_DCF77            4
#define PIN_DCF77_INVERTED   2
#define DEBUG_PIN            8

#define NUMBER_OF_READS     15
#define PREDICTION_WINDOW   25
#define VERIFICATION_WINDOW 30

enum DCF77State {
  Init, 
  PredictWait,
  Verify_0,
  Verify_1  
};


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

  void put(unsigned long x) {
    currentElement = (++currentElement) % NumberOfElements;
    numberOfPushs++;
    data[currentElement] = x;
  }

  unsigned long get(int k) const {
    return data[(currentElement + (NumberOfElements - k)) % NumberOfElements]; 
  }

  void reset() {
    currentElement = 0;
    numberOfPushs = 0;
  }

  bool isValid() const {
    return numberOfPushs >= NumberOfElements;
  }
};

class EdgeStatistics {
  RingBuffer& rb;
  
public:
  EdgeStatistics(RingBuffer& b) : rb(b) {
  }
  
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
  
  unsigned long predictNextButOneEdgeTime() {
    unsigned long average = 0;
    
    for(int i=0;i<RingBuffer::NumberOfElements-1;i++) {
      unsigned long delta = timeDelta(rb.get(i), rb.get(i+1));
      average += delta;
    }
    
    return rb.get(0) + (2*average) / (RingBuffer::NumberOfElements-1);
  }
  
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
unsigned long verify_startTime = 0;
unsigned long predictedEdgeTime = 0;
unsigned long predictedNBWEdgeTime = 0;
RingBuffer fallingEdgeBuffer;
EdgeStatistics es(fallingEdgeBuffer);


void setup() {
  // 
  // init serial interface for debugging.
  Serial.begin(115200);

  // 
  // initialise input pins 
  pinMode(PIN_DCF77, INPUT);
  digitalWrite(PIN_DCF77, HIGH);
  pinMode(PIN_DCF77_INVERTED, INPUT);
  digitalWrite(PIN_DCF77_INVERTED, HIGH);

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
  int numberOfHigh = 0;

  for(int i=0;i<NUMBER_OF_READS;i++) {
    int value = digitalRead(port);
    if(value == HIGH) {
      numberOfHigh++;
    } 
    else {
      numberOfHigh--;
    }
    
    delay(3);
  }

  digitalWrite(DEBUG_PIN, LOW);
  return numberOfHigh > 0 ? HIGH : LOW;
}


void loop() {
  unsigned long now = millis();

  // 
  // state work
  switch(currentState) {
  case Init:         
    break;

  case PredictWait:  
    break;

  case Verify_0:     // check if we can already poll the input
    if( timege(now, verify_startTime) ) {
      // poll the port. value should be low here
      int value = statisticalRead(PIN_DCF77_INVERTED);
      if(value == LOW) {
        // okay, set time for verify_1.
        currentState = Verify_1;
        verify_startTime += 100;
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
        Serial.print("1");
      } 
      else {
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
  noInterrupts();
  digitalWrite(DEBUG_PIN, HIGH);
  unsigned long now = millis();
  
  // 
  // is the start of this flank allowed?
  if(currentState == PredictWait && timeWithin(now, predictedEdgeTime-PREDICTION_WINDOW, predictedEdgeTime+PREDICTION_WINDOW)) { 
    fallingEdgeBuffer.put(now);
    predictedEdgeTime = now;
    verify_startTime = now + VERIFICATION_WINDOW;
    currentState = Verify_0;
  }
  else if(currentState == PredictWait && timeWithin(now, predictedNBWEdgeTime-2*PREDICTION_WINDOW, predictedNBWEdgeTime+2*PREDICTION_WINDOW)) { 
    fallingEdgeBuffer.put(predictedEdgeTime);
    fallingEdgeBuffer.put(now);
    predictedEdgeTime = now;
    verify_startTime = now + VERIFICATION_WINDOW;
    currentState = Verify_0;
    Serial.println("!");
  } 
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


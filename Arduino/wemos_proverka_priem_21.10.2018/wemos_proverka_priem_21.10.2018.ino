  const byte interruptPin = 0;  //Clock D3 500Hz
  const byte FirstPin = 13;     //D7
  const byte SecondPin = 4;     //D2
  const byte ThirdPin = 5;      //D1
  const byte FourthPin = 12;    //D6
  int  num = 0, numPocket = 0;             
  int first, second, third, fourth;
  String msg="", str; 
  bool readytosend=false;
  
  void setup() {
      Serial.begin(115200);
      delay(10);
      
      pinMode(FirstPin, INPUT);
      pinMode(SecondPin, INPUT);
      pinMode(ThirdPin, INPUT);
      pinMode(FourthPin, INPUT);
      pinMode(interruptPin, INPUT_PULLUP);
      attachInterrupt(digitalPinToInterrupt(interruptPin), blink, RISING);
      
  }
  
  void blink(){
     
    first = digitalRead(FirstPin);
    second = digitalRead(SecondPin);
    third = digitalRead(ThirdPin);
    fourth = digitalRead(FourthPin); 
    msg = String(first) + String(second) + String(third) + String(fourth);
    /*Serial.print(first);
    Serial.print(second);
    Serial.print(third);*/
    Serial.println(msg);
    msg="";
  }
  
  void loop() 
  {
    
  }

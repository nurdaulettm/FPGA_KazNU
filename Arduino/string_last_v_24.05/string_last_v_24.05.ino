  #include <ESP8266WiFi.h>
  
  const char* ssid = "fpga";
  const char* password = "1234567890123";
  const char* host = "192.168.43.205";
   
  const byte interruptPin = 0;  //Clock D3 500Hz
  const byte FirstPin = 13;     //D7
  const byte SecondPin = 4;     //D2
  const byte ThirdPin = 5;      //D1
  const byte FourthPin = 12;    //D6
  int  num = 0, numPocket = 0;             
  int first, second, third, fourth;
  String msg, str; 
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
      
      // We start by connecting to a WiFi network
      Serial.println();
      Serial.println();
      Serial.print("Connecting to ");
      Serial.println(ssid);
      
      WiFi.mode(WIFI_STA);
      WiFi.begin(ssid, password);
      
      while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(".");
      }
      Serial.println("");
      Serial.println("WiFi connected");  
      Serial.println("IP address: ");
      Serial.println(WiFi.localIP());
  }
  
  void blink(){
    num += 1;
     
    first = digitalRead(FirstPin);
    second = digitalRead(SecondPin);
    third = digitalRead(ThirdPin);
    fourth = digitalRead(FourthPin); 
    msg += String(first) + String(second) + String(third) + String(fourth);
    if(num>3199){ 
       readytosend=true; 
       Serial.print("calculation finished ");
    }
  }
  
  void loop() 
  {
    if(readytosend)
    {
      WiFiClient client; 
      const int httpPort = 1234;
      int result =client.connect(host, httpPort); 
      bool resultErr =false; 
      delay(500);
      if (!result) 
      {
        Serial.println("connection failed");
        Serial.println(result); 
        client.stop(); 
        delay(500);
        return;
      }  
      if(numPocket<12) 
      {
          int resultSend = client.println(String(numPocket)+":"+msg.substring(numPocket*1000, (numPocket+1)*1000)+";") ; 
          if(resultSend==0)  
            resultErr=true;
          Serial.println("send # "+String(numPocket)+"-"+String(resultSend));
      }
      if(numPocket==12)
      {   
          int resultSend = client.println(String(numPocket)+":"+msg.substring(12*1000, msg.length() ) +";");
          if(resultSend==0)  
            resultErr=true;
          Serial.println("send # "+String(numPocket)+"-"+String(resultSend));   
      }       
      if(numPocket>12)
      { 
        msg = "";
        readytosend=false;
      }     
      delay(500);    
      if(!resultErr)             
        numPocket++;
      client.stop();
    } 
  }

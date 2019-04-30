#include <SoftwareSerial.h>
SoftwareSerial BTSerial(2, 3); // RX | TX

String str="";
int str_len;

void setup() {
    Serial.begin(9600);
    Serial.println("Sketch HC-0x_FC-114_01_9600");
    Serial.println("Arduino with HC-0x FC-114 is ready");
    Serial.println("Make sure Both NL & CR are set");
    Serial.println("");

    // FC-114 default baud rate is 9600
    BTSerial.begin(9600);  
    Serial.println("BTserial started at 9600");
    Serial.println("");
}

void loop() {
    
    // Send temperature to Raspberri Pi
    str = "Hello\n";
    str_len = str.length() + 1;
    char c[str_len] = "  ";
    str.toCharArray(c, str_len); 
    BTSerial.write(c);   
    Serial.print(str);
    delay(3000);
}

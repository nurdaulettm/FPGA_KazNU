#include <Wire.h>

byte value;
int address;

void setup()
{
  value = 0;
  address = 8;
  Wire.begin();
  Serial.begin(115200);
  Serial.println("Verilog I2C Test\n\n");

  delay(1000);
}

void loop()
{
  Serial.print("Address\t");
  Serial.println(address);
  Serial.print("Value\t");
  Serial.println(value);

  Wire.beginTransmission(address);
  Wire.write(value);
  Wire.endTransmission();     
  
  value++;
  delay(1000);
}

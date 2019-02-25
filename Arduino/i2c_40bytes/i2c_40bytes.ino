#include <Wire.h>

byte value[40] = {64, 160, 0, 0, 63, 128, 0, 0, 63, 128, 0, 0, 63, 128, 0, 0, 63, 128, 0, 0,
                  63, 128, 0, 0, 63, 128, 0, 0, 63, 128, 0, 0, 63, 128, 0, 0, 64, 160, 0, 0};
int address = 8, i;

void setup()
{
  Wire.begin();
  Serial.begin(115200);
  Serial.println("Verilog I2C Test\n\n");
  Serial.print("Address\t");
  Serial.println(address);
  Serial.print("Value\t");
  
  for (i = 0; i < 40; i = i + 1) {
    Serial.print(value[i]);
  }
  delay(1000);
}

void loop()
{
  Wire.beginTransmission(address); 
  Wire.write(value, 40);
  Wire.endTransmission();     
  delay(5000);
}

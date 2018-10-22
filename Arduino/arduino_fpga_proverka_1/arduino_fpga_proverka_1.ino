int data[20];
int i=0,clk=3,d=4,j;
int a=HIGH;
int val=0;
void setup() 
{
  Serial.begin(9600);
  pinMode(clk,OUTPUT);
  pinMode(d,OUTPUT);
  
}

void loop()
{
  if(Serial.available())
  {
    val=Serial.read();
    if(val=='1')
    {
                  
          data[0]=1;
          data[1]=0;
          data[2]=1;
          data[3]=1;
          data[4]=0;
          data[5]=0;
          data[6]=1;
          data[7]=1;
          data[8]=1;
          data[9]=0;
          data[10]=1;
          data[11]=0;
          data[12]=1;
          data[13]=1;
          data[14]=1;
          data[15]=1;
          data[16]=0;
          data[17]=0;
          data[18]=0;
          data[19]=1;
       
        while(i!=20)
        {
          a = !a;
          digitalWrite(clk,a);
          Serial.print("clk=");
          Serial.println(a);
          if(a==LOW)
          {
            digitalWrite(d,data[i]); 
            Serial.print("data=");
            Serial.println(data[i]);
            i++;
          }
          delay(10);
        }
        i=0;
        val=0;
        Serial.println("\n Otpravka zaverzhena.");
    }
    else if(val=='0') Serial.println("STOP");
  }
}

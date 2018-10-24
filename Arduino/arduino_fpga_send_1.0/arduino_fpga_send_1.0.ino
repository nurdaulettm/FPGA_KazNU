int data[172]; 
int i=0,clk=3,d2=4,j; 
int az=HIGH; 
int val=0; 

int raw[6]; 
int tt[6] ; 
int Temp[5][32]; 
void setup() 
{ 
Serial.begin(9600); 
pinMode(clk,OUTPUT); 
pinMode(d2,OUTPUT); 
pinMode( A0, INPUT ); 

} 

void loop() 
{ 
if(Serial.available()) 
{ 
val=Serial.read(); 
if(val=='1') 
{ 

raw[0] = analogRead(A0); 
tt[0] = (( raw[0]/1023.0 )*5.0*1000/10)+1; 

raw[1] = raw[0]; 
tt[1] = ( raw[1]/1023.0 )*5.0*1000/10; 

raw[2] = raw[0]; 
tt[2] = ( raw[2]/1023.0 )*5.0*1000/10; 

raw[3] = raw[0]; 
tt[3] = ( raw[3]/1023.0 )*5.0*1000/10; 

raw[4] = raw[0]; 
tt[4] = (( raw[4]/1023.0 )*5.0*1000/10)+1; 
Serial.println(); 
Serial.println(); 
Serial.print("t1="); 
Serial.println(tt[0]); 

Serial.print("t2="); 
Serial.println(tt[1]); 

Serial.print("t3="); 
Serial.println(tt[2]); 

Serial.print("t4="); 
Serial.println(tt[3]); 

Serial.print("t5="); 
Serial.println(tt[4]); 
Serial.println("-----------------------------"); 


int i,d = 1, k=0, exp2=0; 
int t[30]; 
double x, drob, n, y, z; 

x=tt[0]; 

int cel = (int)x; 
while(cel) 
{ 
t[k] = cel%2; 
k++; 
cel /= 2; 
} 

drob = modf(x, &n); 
int a[23]; 

for(i = 0; i < 23; i++) 
{ 
drob *= 2; 
y = modf(drob, &z); 
a[i] = (int)z; 
if(drob >= 1) 
drob = drob - 1; 
} 
/* 
for(i=0; i<k; i++) 
Serial.print(t[i]); 
*/ 
//---------------------— 
exp2=k-1+127; 
cel = (int)exp2; 
int t2[10], k3=0; 
d=1; 
while(cel) 
{ 
t2[k3]= cel%2; 
k3++; 
cel /= 2; 

} 

int g=1; 

if(x>=0) 
{ 
Temp[0][0]=0; 

} 
else 
{ 
Temp[0][0]=1; 

} 
for(i=7; i>=0; i--) { Temp[0][g]=t2[i]; g++; } 
for(i=k-2; i>=0; i--) { Temp[0][g]=t[i]; g++; } 
for(i = 0; i < 24-k; i++) { Temp[0][g]=a[i]; g++; } 
//--------------------------------— 

//----------------------------------c++++++++++++++++++++++++ 

//-----------------------------------------— 



//-------------------------------------------— 










//------------— c++++++++++++++++++++++++++ 
d = 1; k=0; exp2=0; 



x=tt[1]; 

cel = (int)x; 
while(cel) 
{ 
t[k] = cel%2; 
k++; 
cel /= 2; 
} 

drob = modf(x, &n); 


for(i = 0; i < 23; i++) 
{ 
drob *= 2; 
y = modf(drob, &z); 
a[i] = (int)z; 
if(drob >= 1) 
drob = drob - 1; 
} 



//---------------------— 
exp2=k-1+127; 
cel = (int)exp2; 
k3=0; 
d=1; 
while(cel) 
{ 
t2[k3]= cel%2; 
k3++; 
cel /= 2; 

} 

g=1; 

if(x>=0) Temp[1][0]=0; 
else Temp[1][0]=1; 
for(i=7; i>=0; i--) { Temp[1][g]=t2[i]; g++; } 
for(i=k-2; i>=0; i--) { Temp[1][g]=t[i]; g++; } 
for(i = 0; i < 24-k; i++) { Temp[1][g]=a[i]; g++; } 
//--------------------------------— 

//----------------------------------c++++++++++++++++++++++++ 

//-----------------------------------------— 












//------------— c++++++++++++++++++++++++++ 
k=0; exp2=0; 



x=tt[2]; 

cel = (int)x; 
while(cel) 
{ 
t[k] = cel%2; 
k++; 
cel /= 2; 
} 

drob = modf(x, &n); 


for(i = 0; i < 23; i++) 
{ 
drob *= 2; 
y = modf(drob, &z); 
a[i] = (int)z; 
if(drob >= 1) 
drob = drob - 1; 
} 



//---------------------— 
exp2=k-1+127; 
cel = (int)exp2; 
k3=0; 
d=1; 
while(cel) 
{ 
t2[k3]= cel%2; 
k3++; 
cel /= 2; 

} 

g=1; 

if(x>=0) Temp[2][0]=0; 
else Temp[2][0]=1; 
for(i=7; i>=0; i--) { Temp[2][g]=t2[i]; g++; } 
for(i=k-2; i>=0; i--) { Temp[2][g]=t[i]; g++; } 
for(i = 0; i < 24-k; i++) { Temp[2][g]=a[i]; g++; } 
//--------------------------------— 

//----------------------------------c++++++++++++++++++++++++ 

//-----------------------------------------— 











//------------— c++++++++++++++++++++++++++ 
k=0; exp2=0; 



x=tt[3]; 

cel = (int)x; 
while(cel) 
{ 
t[k] = cel%2; 
k++; 
cel /= 2; 
} 

drob = modf(x, &n); 


for(i = 0; i < 23; i++) 
{ 
drob *= 2; 
y = modf(drob, &z); 
a[i] = (int)z; 
if(drob >= 1) 
drob = drob - 1; 
} 



//---------------------— 
exp2=k-1+127; 
cel = (int)exp2; 
k3=0; 
d=1; 
while(cel) 
{ 
t2[k3]= cel%2; 
k3++; 
cel /= 2; 

} 

g=1; 

if(x>=0) Temp[3][0]=0;
 
else Temp[3][0]=1; 
for(i=7; i>=0; i--) { Temp[3][g]=t2[i]; g++; } 
for(i=k-2; i>=0; i--) { Temp[3][g]=t[i]; g++; } 
for(i = 0; i < 24-k; i++) { Temp[3][g]=a[i]; g++; } 
//--------------------------------— 

//----------------------------------c++++++++++++++++++++++++ 

//-----------------------------------------— 











//------------— c++++++++++++++++++++++++++ 
k=0; exp2=0; 



x=tt[4]; 

cel = (int)x; 
while(cel) 
{ 
t[k] = cel%2; 
k++; 
cel /= 2; 
} 

drob = modf(x, &n); 


for(i = 0; i < 23; i++) 
{ 
drob *= 2; 
y = modf(drob, &z); 
a[i] = (int)z; 
if(drob >= 1) 
drob = drob - 1; 
} 



//---------------------— 
exp2=k-1+127; 
cel = (int)exp2; 
k3=0; 
d=1; 
while(cel) 
{ 
t2[k3]= cel%2; 
k3++; 
cel /= 2; 

} 

g=1; 

if(x>=0) Temp[4][0]=0; 
else Temp[4][0]=1; 
for(i=7; i>=0; i--) { Temp[4][g]=t2[i]; g++; } 
for(i=k-2; i>=0; i--) { Temp[4][g]=t[i]; g++; } 
for(i = 0; i < 24-k; i++) { Temp[4][g]=a[i]; g++; } 



data[0]=1; 
data[1]=0; 
data[2]=1; 
data[3]=1; 
data[4]=0; 
data[5]=0; 
data[6]=1; 
data[7]=1; 
//start 
//first trash 
data[8]=1; 
//start data[0] 
g=9; 
Serial.print("\n Dannie = \n"); 
for(i=0; i<5; i++){Serial.print(" Data g :"); 
for(j=0; j<32; j++) 
{ 
data[g]=Temp[i][j]; 



Serial.print(data[g] ); 
g++; 
} Serial.println();} 
data[169]=0; 
data[170]=1; 
data[171]=1; 
i=0; 
Serial.print("\n Otpravka : \n "); 
while(i!=172) 
{ 
az = !az; 
digitalWrite(clk,az); 
/*Serial.print("clk="); 
Serial.println(az);*/ 
if(az==LOW) 
{ 
digitalWrite(d2,data[i]); 
if(i==0 || i==9 || i==(9+32) || i==(9+32+32) || i==(9+32+32+32) || i==(9+32*4) || i==(9+32*5)) 
{ 
Serial.print("\n data = "); 


} 

Serial.print(data[i]); 

i++; 
} 
delay(10); 
} 
i=0; 
val=0; 
Serial.println("\n Otpravka zaverzhena."); 
} 
else Serial.println("STOP"); 
} 
}

import bluetooth
import requests
import RPi.GPIO as GPIO
import time
from time import sleep
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

bd_addr = "20:16:04:18:40:87"
port = 1
data = ""
k = 0


not_connected = True

while not_connected:
    try:
        sock = bluetooth.BluetoothSocket(bluetooth.RFCOMM)
        sock.connect((bd_addr, port))
        not_connected = False
    except:
        sleep(1)
        pass
end_time = time.time() + 20 * 1 
while time.time() < end_time:
    try:
        data += sock.recv(1024).decode()
        data_end = data.find('\n')
        if data_end != -1:
            rec = data[:data_end]
            #print(rec)
            get_send = rec.split()
            f1 = requests.get("http://95.161.225.75/FPGAdev/api/Values/sendDatas?value="+get_send[1]+"&type=10&device=1987&step=" + str(k), timeout=5)
            f2 = requests.get("http://95.161.225.76/FPGAdev/api/Values/sendDatas?value="+get_send[2]+"&type=11&device=1987&step=" + str(k))
            f3 = requests.get("http://95.161.225.76/FPGAdev/api/Values/sendDatas?value="+get_send[0]+"&type=12&device=1987&step=" + str(k))
            print(f1.text)
            print(f2.text)
            print(f3.text) 
            if f1.text=='["ok"]' and f2.text=='["ok"]' and f3.text=='["ok"]' :
                print ("abc")
                GPIO.setup(15,GPIO.OUT)
                GPIO.output(15,GPIO.HIGH)
                GPIO.setup(18,GPIO.OUT)
                GPIO.output(18,GPIO.LOW)
            else:
                print ("ab4444444c")
                GPIO.setup(15,GPIO.OUT)
                GPIO.output(15,GPIO.LOW)
                GPIO.setup(18,GPIO.OUT)
                GPIO.output(18,GPIO.HIGH)
               
            k = k + 1
            data = data[data_end+1:]
    except KeyboardInterrupt:
         break
    except requests.exceptions.ConnectTimeout:
        GPIO.setup(15,GPIO.OUT)
        GPIO.output(15,GPIO.LOW)
        GPIO.setup(18,GPIO.OUT)
        GPIO.output(18,GPIO.HIGH)
sock.close()
print("time____")

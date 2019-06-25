import bluetooth
import multiprocessing
import requests
import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)


N = 2
bth_addr = ["20:16:04:18:50:61", "00:21:13:05:C3:5E"]
bth_port = [1, 1]

def connect(addr, port):
    not_connected = True

    while not_connected:
        try:
            socket = bluetooth.BluetoothSocket(bluetooth.RFCOMM)
            socket.connect((addr, port))
            not_connected = False
        except:
            sleep(1)
            pass
    return socket

def receive_data(address, port_number, t):
    GPIO.setup(t + 15,GPIO.OUT)
    GPIO.output(t + 15,GPIO.LOW)
    GPIO.setup(t + 17,GPIO.OUT)
    GPIO.output(t + 17,GPIO.LOW)
    bth_socket = connect(address, port_number)
    data = ""
    k = 0
    while 1:
        try:
            data += bth_socket.recv(1024).decode()
            data_end = data.find('\n')
            if data_end != -1:
                rec = data[:data_end]
                get_send = rec.split()
                f1 = requests.get("http://95.161.225.76/FPGAdev/api/Values/sendDatas?value="+get_send[1]+"&type=10&device=" + str(t+1) + "&step=" + str(k), timeout=15)
                f2 = requests.get("http://95.161.225.76/FPGAdev/api/Values/sendDatas?value="+get_send[2]+"&type=11&device=" + str(t+1) + "&step=" + str(k), timeout=15)
                f3 = requests.get("http://95.161.225.76/FPGAdev/api/Values/sendDatas?value="+get_send[0]+"&type=12&device=" + str(t+1) + "&step=" + str(k), timeout=15)
                if f1.text=='["ok"]' and f2.text=='["ok"]' and f3.text=='["ok"]':
                    GPIO.output(t + 15,GPIO.HIGH)
                    GPIO.output(t + 17,GPIO.LOW)
                else:
                    GPIO.output(t + 15,GPIO.LOW)
                    GPIO.output(t + 17,GPIO.HIGH)
                   
                k = k + 1
                data = data[data_end+1:]
        except KeyboardInterrupt:
            GPIO.output(t + 15,GPIO.LOW)
            GPIO.output(t + 17,GPIO.LOW)
            break
        except bluetooth.btcommon.BluetoothError:
            sleep(2)
            GPIO.output(t + 15,GPIO.LOW)
            GPIO.output(t + 17,GPIO.HIGH)
            bth_socket = connect(address, port_number)
        except requests.exceptions.ConnectTimeout:
            GPIO.output(t + 15,GPIO.LOW)
            GPIO.output(t + 17,GPIO.HIGH)
        except requests.exceptions.ReadTimeout:
            GPIO.output(t + 15,GPIO.LOW)
            GPIO.output(t + 17,GPIO.HIGH)
        except requests.packages.urllib3.exceptions.ReadTimeoutError:
            GPIO.output(t + 15,GPIO.LOW)
            GPIO.output(t + 17,GPIO.HIGH)
        except requests.exceptions.ConnectionError:
            GPIO.output(t + 15,GPIO.LOW)
            GPIO.output(t + 17,GPIO.HIGH)
    
    GPIO.output(t + 15,GPIO.LOW)
    GPIO.output(t + 17,GPIO.HIGH)        
    bth_socket.close()


if __name__ == '__main__':
    jobs = []
    for i in range(N):
        p = multiprocessing.Process(target=receive_data, args = (bth_addr[i], bth_port[i], i))
        jobs.append(p)
        p.start()

import bluetooth
import requests
from time import sleep

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

while 1:
    try:
        data += sock.recv(1024).decode()
        data_end = data.find('\n')
        if data_end != -1:
            rec = data[:data_end]
            #print(rec)
            get_send = rec.split()
            f1 = requests.get("http://95.161.225.76/FPGAdev/api/Values/sendDatas?value="+get_send[1]+"&type=10&device=1987&step=" + str(k))
            f2 = requests.get("http://95.161.225.76/FPGAdev/api/Values/sendDatas?value="+get_send[2]+"&type=11&device=1987&step=" + str(k))
            f3 = requests.get("http://95.161.225.76/FPGAdev/api/Values/sendDatas?value="+get_send[0]+"&type=12&device=1987&step=" + str(k))
            k = k + 1
            data = data[data_end+1:]
    except KeyboardInterrupt:
         break
sock.close()    
import bluetooth
from time import sleep

bd_addr = "00:21:13:05:C3:5E"
port = 1
data = ""
k = 0



def connect():
    not_connected = True

    while not_connected:
        try:
            sock = bluetooth.BluetoothSocket(bluetooth.RFCOMM)
            sock.connect((bd_addr, port))
            not_connected = False
        except:
            sleep(1)
            pass
    return sock

sock = connect()
    
while 1:
    try:
        data += sock.recv(1024).decode()
        data_end = data.find('\n')
        if data_end != -1:
            rec = data[:data_end]
            print(rec)
            data = data[data_end+1:]
    except KeyboardInterrupt:
         break
    except bluetooth.btcommon.BluetoothError:
        sleep(2)
        sock = connect()
        pass
    
sock.close()    

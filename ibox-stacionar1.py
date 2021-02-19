#!/usr/bin/env python
import time
import requests
import serial
import serial.tools.list_ports as ports
import queue
import threading

#local ip = 192.168.12.11

def get_COMs():
    pts = ports.comports()
    coms = []
    for p in pts:
        if 'USB' in p[1]:
            coms.append(p[0])
    return coms

COM_COUNT = True

while(COM_COUNT):
    if(len(get_COMs()) == 2):
        com_ports = get_COMs()
        s1 = serial.Serial(com_ports[0],9600)
        s2 = serial.Serial(com_ports[1],9600)
        COM_COUNT = False
    else:
        COM_COUNT = True


sensordict = {}

queue1 = queue.Queue(1000)

def convert(lst):
    it = iter(lst)
    res_dct = dict(zip(it, it))
    return res_dct


def serial_read(s):
    while True:
        try:
            line = s.readline()
            queue1.put(line)
        except:
            pass


threadA = threading.Thread(target=serial_read, args=(s1, ), ).start()
threadB = threading.Thread(target=serial_read, args=(s2, ), ).start()


while 1:
    #start = time.time()
    ibox_data = ''
    for i in range(4):
        line = queue1.get()
        read_serial = line.decode("utf8")
        l = read_serial.split(';')
        for i in range(len(l)):
            sensordict.update(convert(l[i].split("=")))
            ibox_data += l[i]
    
    ibox_data += ';'
    print('ibox_data', ibox_data)
    try:
        #strdata = "Device: 52, temperature: " + sensordict["T"] + ", humidity: " + sensordict["H"] + ", CO2_ppm: " + sensordict["CO2"] + ", Gas_MQ2: " + sensordict["GAS_MQ2"] + ", Current: " + sensordict["I"] + ", Voltage: " + sensordict["V"] + ";"
        print('begin')
        r = requests.post('https://nii-it.kz:2528/BLE/api/APIble/TreatmentData', json={"NotParsed":ibox_data})
        print('success')
    except:
        pass
    #print(r.status_code)
    #print(time.time() - start)
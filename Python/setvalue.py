import serial
import io
from datetime import *

# /dev/tty.usbmodem1101 115200

ser = serial.Serial('/dev/tty.usbmodem1101')  # open serial port
sio = io.TextIOWrapper(io.BufferedRWPair(ser, ser))

while(1):
	now = datetime.now()
	thisyear = now.year
	xmas = datetime(thisyear,12,25)

	if now < xmas:
		delta = int((xmas - now).total_seconds())
	else:
		delta = 0

	my_str = str('a'+ str(delta))
	my_str.ljust(9, ".")

	sio.write(my_str)
	sio.flush()


ser.close()             # close port

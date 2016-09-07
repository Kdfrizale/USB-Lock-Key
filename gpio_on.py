import RPi.GPIO as GPIO

##Variable pinLock is the corresponding pin on the raspberry pi that is connected to the lock
pinLock = 21

##Setup pin and turn pin high
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(pinLock,GPIO.OUT)
GPIO.output(pinLock, True)

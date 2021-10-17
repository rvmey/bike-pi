import sys
from rpi_ws281x import *

if len(sys.argv) > 1:
    if sys.argv[1] == "white":
        color = Color(255,255,255)
        print("white")
    elif sys.argv[1] == "green":
        print("green")
        color = Color(0,255,0)
    elif sys.argv[1] == "red":
        color = Color(255,0,0)
        print("red")
    elif sys.argv[1] == "blue":
        color = Color(0,0,255)
        print("blue")
    elif sys.argv[1] == "off":
        color = Color(0,0,0)
        print("off")
    else:
        color = Color(255,255,255) # white
        print("white")
else:
    color = Color(255,255,255) # white

# LED strip configuration:
LED_COUNT      = 300      # Number of LED pixels.
LED_PIN        = 18      # GPIO pin connected to the pixels (18 uses PWM!).
#LED_PIN        = 10      # GPIO pin connected to the pixels (10 uses SPI /dev/spidev0.0).
LED_FREQ_HZ    = 800000  # LED signal frequency in hertz (usually 800khz)
LED_DMA        = 10      # DMA channel to use for generating signal (try 10)
LED_BRIGHTNESS = 255     # Set to 0 for darkest and 255 for brightest
LED_INVERT     = False   # True to invert the signal (when using NPN transistor level shift)
LED_CHANNEL    = 0       # set to '1' for GPIOs 13, 19, 41, 45 or 53

strip = Adafruit_NeoPixel(LED_COUNT, LED_PIN, LED_FREQ_HZ,LED_DMA,LED_INVERT,LED_BRIGHTNESS,LED_CHANNEL)
strip.begin()

for x in range(0,LED_COUNT):
    strip.setPixelColor(x,color)

strip.show()

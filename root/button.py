import os, time
from gpiozero import Button
button = Button(2)
cmd = '/root/toggle.sh'
while True:
  button.wait_for_press()
  print('You pushed me')
  os.system(cmd)
  time.sleep(1)

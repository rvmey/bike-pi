import os, time
from gpiozero import Button
button = Button(2)
script_path = os.path.dirname(os.path.realpath(__file__))
cmd = script_path + '/toggle.sh'
while True:
  button.wait_for_press()
  print('You pushed me')
  os.system(cmd)
  time.sleep(1)

# bike-pi

## Purpose

Use this repo to setup your bike with a Raspberry Pi, an LED strip, and a physical button to toggle the lights on and off.

It will also install the TRIGGERcmd agent and allow you to remotely control the lights.

## Usage

1. ssh into your Raspberry Pi
2. Run this to switch to the root user:  `sudo su -`
2. Clone this repo with this command:  `git clone https://github.com/rvmey/bike-pi.git`
3. Edit the `/root/bike-pi/wpa_supplicant/wpa_supplicant.conf` file and replace the homewifi, phonewifi, and wifipasswd values.
2. Create a `/root/token.tkn` file with a token from the Instructions page in it.
4. Run the following commands:

```
cp ~/bike-pi/etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
cp ~/bike-pi/etc/rc.local /etc/rc.local
cp ~/bike-pi/root/.TRIGGERcmdData/commands.json ~/.TRIGGERcmdData/commands.json 
reboot
```

Note: At this point, the Raspberry Pi should reboot, and the commands in the rc.local script will run.  That will install the agent and add a computer to your account, so make sure your account is either subscribed or it doesn't have a computer in it already.  Only subscribed accounts can have more than one computer.  
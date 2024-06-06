# spscontroller (Shadow Puppet Screen Controller)
This was originally created to allow children to choose the colour of a projector screen, and music played on a loudspeaker, for a shadow puppet theatre. 

This documentation is incomplete due to late night completion... Please check before using (esp. before any laser cutting).

The controller consists of:
- a laser cut ply box with arcade buttons and an esp32, which sends mqtt messages when music and colour have been chosen and the massive red button pressed 
- a Raspberry Pi hosting an mqtt server which receives the messages and plays mp4 files via hdmi and mp3 files via audio output
- additionally mqtt messages are sent to control WLED devices via wifi
- The micropython code for the esp32 is in https://github.com/goatchurchprime/jupyter_micropython_developer_notebooks/blob/master/mqtt_async_projects/jackiearcadelights.ipynb. Julian @goatchurchprime wrote this code in micropython as the original library for the Adafruit LED Arcade Button 1x4 - STEMMA QT I2C Breakout was in [Circuit Python](https://github.com/adafruit/Adafruit_CircuitPython_seesaw).

Components (a basic list - I might have missed some things)
- Plywood for box
- Sign vinyl and engraving acrylic for labels
- M5 nuts and bolts to attach the lid to the box
- M3 nuts and bolts to attach the label strips
- wood glue
- double sided sticky tape to make sure labels are securely attached
- screw lock
- Raspberry Pi 4 plus power supply and appropriate protective box
- ESP32 Devkit C plus power supply
- 4 x [Adafruit LED Arcade Button 1x4 - STEMMA QT I2C Breakout (STEMMA QT / Qwiic)](https://thepihut.com/products/adafruit-led-arcade-button-1x4-stemma-qt-i2c-breakout-stemma-qt-qwiic)
- 1 green, 1 blue, 1 yellow, 1 red 30 mm arcade buttons e.g. [here for green](https://thepihut.com/products/arcade-button-30mm-translucent-green)
- [8 clear translucent 30mm arcade buttons](https://thepihut.com/products/arcade-button-30mm-translucent-clear) 6 are for the 5 types of music and "no music", one is for white, and one is for purple (colour in with e.g. Sharpie as purple LED arcade buttons don't seem to be 
easily available
- [Massive Arcade Button (red)](https://thepihut.com/products/massive-arcade-button-with-led-100mm-red)
- 3 x [Arcade Button Quick-Connect Wire Pairs - 2.8mm/0.11" (10 pack)](https://thepihut.com/products/arcade-button-quick-connect-wire-pairs-0-11-10-pack) - For connecting the 30mm arcade buttons to breakout boards
- [Arcade Button and Switch Quick-Connect Wires - 6.4mm/0.25" (10-pack)](https://thepihut.com/products/arcade-button-and-switch-quick-connect-wires-0-25-10-pack) - for connecting the massive red button to a breakout board (or find some 0.25" spade connectors and replace 0.11" spade connectors on spare 0.11" quick-connect wires
- 3 x STEMMA QT / Qwiic Compatible JST-SH 4-Pin Cable (50mm)[https://thepihut.com/products/stemma-qt-qwiic-jst-sh-4-pin-cable] to connect I2C breakout boards to each other. You need to cut open the I2C address jumpers on the breakout boards so they have different addresses
- 1 x [STEMMA QT / Qwiic JST SH 4-pin Cable - 100mm Long](https://thepihut.com/products/stemma-qt-qwiic-jst-sh-4-pin-cable-100mm-long) to attach the breakout boards to the ESP32
- Projector and micro HDMI to projector HDMI cable
- Loudspeaker and 3.5" audio jack connector

Run mqtt server on the pi, and set it up as an access point. The controller and any mqtt devices need to connect to the pi. 
The pi uses the [paho mqtt library](https://cdnjs.cloudflare.com/ajax/libs/paho-mqtt/1.1.0/paho-mqtt.js) - copy this into the home directory (if you don't, it does seem to cache this).
Copy spscontroller.html and runkiosk.sh to the home directory.

Other changes were made on the pi, but I don't have a list at this time.

# spscontroller
This was originally created to allow children to choose the colour of a projector screen, and music played on a loudspeaker, for a shadow puppet theatre 
It consists of:
- a laser cut ply box with arcade buttons and an esp32, which sends mqtt messages when music and colour have been chosen and the big red button pressed.
- a Raspberry Pi hosting an mqtt server which receives the messages and plays mp4 files via hdmi and mp3 files via audio output
- additionally mqtt messages are sent to control WLED devices via wifi
- The micropython code for the esp32 is in https://github.com/goatchurchprime/jupyter_micropython_developer_notebooks/blob/master/mqtt_async_projects/jackiearcadelights.ipynb. Julian @goatchurchprime wrote this code in micropython as the original library for the Adafruit LED Arcade Button 1x4 - STEMMA QT I2C Breakout was in Circuit Python.

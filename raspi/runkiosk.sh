#!/bin/bash
cd /home/spscontroller
sleep 20
echo Running Hostapd
sudo systemctl start hostapd
#sudo systemctl status hostapd
export DISPLAY=:0
export XDG_RUNTIME_DIR=/run/user/1000
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences
chromium-browser /home/spscontroller/spscontroller.html --autoplay-policy=no-user-gesture-required --enable-chrome-browser-cloud-management --start-fullscreen --audio


#!/usr/bin/env bash

x11docker \
  --name=meatbox \
  --desktop \
  --xephyr \
  --fullscreen \
  --size=1920x1080 \
  --init=systemd \
  --dbus-system \
  --user=RETAIN \
  --sudouser \
  --clipboard \
  --pulseaudio \
  --cap-default \
  -- \
  --cap-add=SYS_ADMIN \
  -- \
  meatwallace/meatbox /usr/bin/xinitrcsession-helper
  # requires root user to run our login screen 
  # meatwallace/meatbox /usr/bin/lightdm
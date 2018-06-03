# XBOX Connected as USB

sudo killall >> /dev/shm/runcommand.log 2>&1 xboxdrv
sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
        --evdev /dev/input/by-id/usb-Microsoft_Controller_3032363030303232363436373331-event-joystick \
        --detach-kernel-driver \
        --force-feedback \
        --deadzone-trigger 5% \
        --deadzone 4000 \
        --silent \
        --trigger-as-button \
        --mimic-xpad \
        --evdev-absmap \
ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,\
ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y,\
        --evdev-keymap \
BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,\
BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,\
BTN_THUMBL=tl,BTN_THUMBR=tr,\
BTN_TL=lb,BTN_TR=rb,BTN_TL2=lt,BTN_TR2=rt \
        --ui-buttonmap du=KEY_W,dd=KEY_X,dl=KEY_S,dr=KEY_F \
        --ui-buttonmap a=KEY_R,y=KEY_T,x=KEY_Y \
        --ui-buttonmap start=KEY_F10,lt+start=KEY_LEFTSHIFT+KEY_F10 \
        --ui-buttonmap back=KEY_F9,lt+back=KEY_LEFTSHIFT+KEY_F9 \
        --ui-buttonmap guide=KEY_ENTER,lt+guide=KEY_M \
        --ui-buttonmap tr=KEY_I \
        --ui-buttonmap lt+tl=KEY_H \
        --ui-buttonmap lb=KEY_KPMINUS,lt+lb=KEY_BACKSLASH \
        --ui-buttonmap rb=KEY_BACKSPACE,lt+rb=KEY_KPPLUS \
        --ui-buttonmap lt+rt=KEY_U \
        --axismap -Y1=Y1,-Y2=Y2 \
        --ui-buttonmap rt=BTN_LEFT,b=BTN_RIGHT \
        --axis-sensitivity x1=1.0,y1=1.0 \
        --ui-axismap x2=REL_X:20:3,y2=REL_Y:20:3 \
        --axis-sensitivity x2=0,y2=0 \
        --ui-axismap x1^deadzone:2000=REL_X:14,y1^deadzone:2000=REL_Y:14


# XBOX Connected Bluetooth
sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
        --evdev /dev/input/event3 \
        --detach-kernel-driver \
        --force-feedback \
        --deadzone-trigger 5% \
        --deadzone 4000 \
        --silent \
        --mimic-xpad \
        --evdev-absmap \
ABS_X=x1,ABS_Y=y1,\
ABS_Z=x2,ABS_RZ=y2,\
ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y,\
ABS_BRAKE=lt,ABS_GAS=rt \
        --evdev-keymap \
KEY_HOMEPAGE=guide,BTN_BACK=back,BTN_START=start,\
BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,\
BTN_THUMBL=tl,BTN_THUMBR=tr,\
BTN_TL=lb,BTN_TR=rb \
        --ui-buttonmap du=KEY_W,dd=KEY_X,dl=KEY_S,dr=KEY_F \
        --ui-buttonmap a=KEY_R,y=KEY_T,x=KEY_Y \
        --ui-buttonmap start=KEY_F10,lt+start=KEY_LEFTSHIFT+KEY_F10 \
        --ui-buttonmap back=KEY_F9,lt+back=KEY_LEFTSHIFT+KEY_F9 \
        --ui-buttonmap guide=KEY_ENTER,lt+guide=KEY_M \
        --ui-buttonmap tr=KEY_I \
        --ui-buttonmap lt+tl=KEY_H \
        --ui-buttonmap lb=KEY_KPMINUS,lt+lb=KEY_BACKSLASH \
        --ui-buttonmap rb=KEY_BACKSPACE,lt+rb=KEY_KPPLUS \
        --ui-buttonmap lt+rt=KEY_U \
        --axismap -Y1=Y1,-Y2=Y2 \
        --ui-buttonmap rt=BTN_LEFT \
        --ui-buttonmap b=BTN_RIGHT \
        --axis-sensitivity x1=1.0,y1=1.0 \
        --ui-axismap x1^deadzone:2000=REL_X:40:3,y1^deadzone:2000=REL_Y:40:3 \
        --axis-sensitivity x2=0,y2=0 \
        --ui-axismap x2=REL_X:8:5,y2=REL_Y:8:5 \
        --ui-axismap lt+x2=REL_X:20:5,lt+y2=REL_Y:20:5 \
        &

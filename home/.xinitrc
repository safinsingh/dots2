#!/bin/sh

if xrandr | grep "DP-1 connected"; then
	xrandr --output DP-1 --same-as eDP-1
fi

#locking
xset s 300 5
export XSECURELOCK_PASSWORD_PROMPT=time
xss-lock -n /usr/lib/xsecurelock/dimmer -l -- xsecurelock

#cosmetics
polybar &
xsetroot -solid "#444444"

exec ./fun/code/sowm/sowm

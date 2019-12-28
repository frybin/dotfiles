#!/usr/bin/env sh
#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
# polybar top &
# polybar bottom &


if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar -c $HOME/.config/polybar/config.ini top &
		MONITOR=$m polybar -c $HOME/.config/polybar/config.ini bottom &
	done
else
	polybar -c $HOME/.config/polybar/config.ini top &
        polybar -c $HOME/.config/polybar/config.ini bottom &
fi

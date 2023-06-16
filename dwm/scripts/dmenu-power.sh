#!/bin/sh

    
case "$(echo -e "Shutdown\nRestart\nSuspend\nLock" | dmenu \
    -i -p \
    "Power:" -l 5)" in
        Shutdown) exec systemctl poweroff;;
        Restart) exec systemctl reboot;;
        Suspend) exec systemctl suspend;;
        Lock) exec dm-tool lock;;
esac

#!/bin/bash
if ip link show wg_ro | grep -q UP
then 
	sudo wg-quick down wg_ro
	notify-send -i offline "VPN is Off"
else 
	sudo wg-quick up wg_ro
	notify-send -i online "VPN is On"
fi

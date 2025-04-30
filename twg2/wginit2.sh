#!/bin/bash
#wg genkey > private
#wg pubkey < private
ip link add dev wg0 type wireguard
#wg set wg0 private-key ./private
#wg set wg0 listen-port 51822
ip addr add 10.13.13.12/24 dev wg0
wg setconf wg0 ./wg0.conf
ip link set wg0 up
tail -f /dev/null

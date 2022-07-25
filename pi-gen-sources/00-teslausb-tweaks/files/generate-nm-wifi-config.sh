#!/bin/bash

cat <<EOF
[connection]
id=$1
uuid=$(cat /proc/sys/kernel/random/uuid)
type=wifi
interface-name=wlan0
permissions=

[wifi]
mac-address-blacklist=
mode=infrastructure
ssid=$1

[wifi-security]
auth-alg=open
key-mgmt=wpa-psk
psk=$2

[ipv4]
dns-search=
method=auto

[ipv6]
addr-gen-mode=stable-privacy
dns-search=
method=auto

[proxy]
EOF

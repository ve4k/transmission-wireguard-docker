#!/bin/sh
wg-quick up wg0
mkdir -p /etc/transmission
transmission-daemon --config-dir /etc/transmission -f

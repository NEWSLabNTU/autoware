#!/usr/bin/env bash

set -e
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

busybox devmem 0x0c303000 32 0x0000c400
busybox devmem 0x0c303008 32 0x0000c458
busybox devmem 0x0c303018 32 0x0000c458
busybox devmem 0x0c303010 32 0x0000c400

modprobe can_raw
modprobe can
modprobe mttcan

ip link set can0 type can bitrate 500000 sample-point 0.825 restart-ms 50
ip link set up can0

ip link set can1 type can bitrate 500000 dbitrate 2000000 berr-reporting on fd on
ip link set up can1

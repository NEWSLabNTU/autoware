#!/usr/bin/env bash
set -e
cd ~/ros_ws/src/can_tools/CAN_6m_bus/keyboardtest
cantools monitor -c can0 DB_XinYi_BUS_CAN_Draft02.dbc

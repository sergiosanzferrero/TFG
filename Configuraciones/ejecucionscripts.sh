#!/bin/bash
#Borrado de logs de la base de datos
#curl -X DELETE http://localhost:9200/netflow*
#Ejecución de scripts remotos
case $1 in
        ("fuerzabruta.sh") /usr/bin/ssh -t pi@157.88.123.118 'bash /home/pi/fuerzabruta.sh';;
        ("dos.sh") /usr/bin/ssh -t pi@157.88.123.118 'sudo bash /home/pi/dos.sh';;&
        ("nmap.sh") /usr/bin/ssh -t pi@157.88.123.118 'sudo bash /home/pi/nmap.sh';;
        (*) echo "$1";;
esac

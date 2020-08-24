#!/bin/bash
buscapagina=$(wget -q IP_DO_ARDUINO)
tempdatafloat="`cat index.html | grep -v -e "<html>" -e "DOCTYPE" -e "</html>"`"
rm index.html
zabbix_sender -z IP_DO_ZABBIX_SERVER -s Ardutemp -k ardu.temp -o $tempdatafloat

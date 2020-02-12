#!/bin/bash

cd ~
#con este comando nos aseguramos de estar
#en el directorio /home/user

mkdir mar13
cd mar13
#creamos el directorio mar13
#y nos metemos en el si ponemos
#pwd nos indica donde estamos
#en este caso /home/user/mar13

mkdir original
cp /etc/passwd /etc/resolv.conf original
#creamos el directorio original
#y copiamos resolv.conf passwd en este
#directorio /home/user/mar13

cp -r original copia
#seguimos estando en /home/user/mar13
#y realizamos la copia exactade original
#con la opcion -r

touch gente
who > gente
chmod 766 gente

touch procesos
ps > procesos

touch variables
env | sort | head -n 5 > variables







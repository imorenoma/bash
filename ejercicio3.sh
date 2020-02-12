#!/bin/bash

Error(){
echo "Error. Sintaxis de uso: ./ejercicio3.sh archivo | directorio"
}
if [$# -lt 1] 
then 
	Error 

elif [-d $1] 
then 
	echo "$1 es un directorio y su tamaño es el siguiente:"
	du -hs $1 

elif [-f $1] 
then 
	echo "$1 es un archivo regular y su tamaño es el siguiente:"
	du -hs $1 

else 
	echo "$1 no existe."

fi

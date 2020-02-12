#!/bin/bash

Error(){
echo "Error. No se son argumentos validos. La sintaxis del script es :"
echo "$0 archivo A_|_Z"
}
if test $# -lt 2 
then
Error
elif test -f $1 && (test $2 = "A" || test $2 = "Z") 
then
if test $2 = "A" 
then
cat $1 | sort -d 

elif test $2 = "Z" # Si el parámetro posicional $2 es "Z".
then
cat $1 | sort -r 
fi
else 
Error
fi

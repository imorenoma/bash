#!/bin/bash
if [ $# -eq 0 ]
then
  echo ERROR! Modo de uso:
  echo "./ejer8.sh nombre_de_fichero [o_mas]"
else
  for i in $*
  do
    egrep '^[^aeiou][[:lower:]]{3,4}' $i
  done
fi

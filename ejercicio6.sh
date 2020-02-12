#!/bin/bash
if [ $# != 2 ]
then
  echo ERROR! Modo de uso:
  echo ./ejer6.sh nombre_de_directorio nombre_de_directorio
else
  cp `find $1 -mtime -1` $2
  cd $2
  for i in *
  do
    mv $i $i.`date +%F`
  done
fi

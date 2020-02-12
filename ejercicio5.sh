#!/bin/bash

if [ $# != 2 ]
then
  echo ERROR! Modo de uso:
  echo ./ejercicio5.sh nombre_de_directorio num_minutos
else
  echo "Se mostraran los archivos modificados en los ultimos $2 minutos"

select OPCION in `find $1 -mmin -$2` Salir
  do
    if [ $OPCION == "Salir" ]
    then
      break
    else
      rm $OPCION
    fi
  done
fi

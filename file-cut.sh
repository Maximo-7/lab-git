#!/bin/bash

# soy alumno07, luego recortaré la séptima parte
DENOMINADOR=7
# Toma el primer argumento, que es el fichero a procesar
fichero="$1"

echo "Procesando fichero $1"
lineas_totales=$(wc -l < "$fichero")

# División entera, con un resto menor o igual que 7
lineas_fraccion=$((lineas_totales / DENOMINADOR))

head -n "$lineas_fraccion" "$fichero" > "${fichero}_recortado"

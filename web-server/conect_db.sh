#!/bin/bash

# Espera a que la base de datos esté disponible
while ! mysqladmin ping -h db --silent; do
  echo "Esperando a que la base de datos esté disponible..."
  sleep 1
done

# Ejecuta la consulta y guarda la salida en un archivo
mysql -h db -u joaquin -p'1234' -e 'USE mi_db; SELECT * FROM prueba;' > /usr/share/nginx/html/prueba.txt

# Inicia NGINX en primer plano
nginx -g 'daemon off;'

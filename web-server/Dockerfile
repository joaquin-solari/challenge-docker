FROM nginx:latest

# Instala el cliente MySQL
RUN apt-get update && apt-get install -y default-mysql-client

COPY conect_db.sh /etc/nginx/conect_db.sh

# Cambiar los permisos del script
RUN chmod +x /etc/nginx/conect_db.sh

# Correr el script
CMD ["/bin/bash", "/etc/nginx/conect_db.sh"]

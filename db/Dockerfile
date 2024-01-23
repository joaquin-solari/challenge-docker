FROM mysql:latest

COPY ./SQL/create_table.sql /docker-entrypoint-initdb.d/

RUN chmod 755 /docker-entrypoint-initdb.d/create_table.sql

EXPOSE 3306

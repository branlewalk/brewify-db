FROM mysql

COPY root-config.sql /docker-entrypoint-initdb.d/root-config.sql

ENV MYSQL_ROOT_PASSWORD 'password'
ENV MYSQL_ALLOW_EMPTY_PASSWORD 1
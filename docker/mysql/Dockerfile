FROM mysql:5.7
ENV MYSQL_ROOT_HOST='%'
ENV MYSQL_ALLOW_EMPTY_PASSWORD='yes'
COPY ./data /data
COPY ./mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

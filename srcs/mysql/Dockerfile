FROM alpine:3.12

RUN apk update && apk upgrade

RUN	apk add openrc mysql mysql-client && \
	mkdir /run/mysqld && chown -R mysql /run/mysqld

COPY my.cnf /etc/my.cnf
COPY createdb.sql ./
COPY DB_Rem.sql ./
COPY run.sh ./

EXPOSE	3306

ENTRYPOINT sh run.sh

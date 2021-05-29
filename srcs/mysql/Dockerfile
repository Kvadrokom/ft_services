FROM alpine:3.12

RUN  apk update && apk upgrade

RUN	apk add openrc mysql mysql-client && \
	mkdir /run/mysqld && chown -R mysql /run/mysqld
COPY  my.cnf /etc/my.cnf
# RUN  apk add mysql mysql-client openrc
COPY createdb.sql ./
COPY run.sh ./
# RUN  chown -R mysql:mysql /run/mysqld
# RUN  chown -R mysql:mysql /var/lib/mysql  
#ENTRYPOINT ["sh"]
#CMD ["-c" , "tail -f /dev/null"]
#CMD  run.sh

EXPOSE	3306

ENTRYPOINT sh run.sh

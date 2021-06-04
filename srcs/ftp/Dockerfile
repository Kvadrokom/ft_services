FROM	alpine:3.12

RUN     apk update && apk upgrade

RUN     apk add vsftpd openrc openssl

RUN		openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-subj "/C=RU/ST=Moscow/L=Moscow/O=Romashka/OU=school21/emailAddress=lortrem@mail.ru" \
        -keyout /etc/ssl/private/vsftpd.key \
         -out /etc/ssl/certs/vsftpd.crt

RUN 	mkdir -p /var/ftp
RUN		adduser -D -h /var/ftp Rem; echo "Rem:123" | chpasswd

COPY	vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY	run.sh .
RUN		chmod 711 run.sh

EXPOSE	20 21 30000

ENTRYPOINT ["sh", "run.sh"]
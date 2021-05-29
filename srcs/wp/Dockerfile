FROM	alpine:3.12

RUN		apk update && apk upgrade
RUN		apk add openrc nginx supervisor php7 php7-fpm php7-mysqli php7-zlib \
		php7-curl php7-mbstring php7-json php7-session
RUN		mkdir www
RUN 	wget https://wordpress.org/latest.zip && unzip latest.zip && \
        mv wordpress /www/ && rm latest.zip
RUN 	mkdir -p /run/nginx && chmod 744 /run/nginx
#RUN     openssl req -x509 -nodes -days 365 -newkey rsa:2048\
#        -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj\
#    	"/C=RU/ST=Moscow/L=Moscow/O=Romashka/OU=school21/emailAddress=lortrem@mail.ru"
#RUN 	wget https://ru.wordpress.org/latest-ru_RU.tar.gz
#RUN		tar -xf latest-ru_RU.tar.gz

COPY 	./nginx.conf /etc/nginx/conf.d/default.conf
COPY 	./supervisord.conf /etc/supervisord.conf
COPY	./wp-config.php /www/

#RUN		rm -rf latest-ru_RU.tar.gz
#RUN		mv wordpress /www/

COPY 	./wp-config.php /www/
EXPOSE	5050

ENTRYPOINT /usr/bin/supervisord -c /etc/supervisord.conf
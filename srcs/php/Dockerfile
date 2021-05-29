FROM alpine:3.12

RUN     apk update && apk upgrade

RUN     apk add  php-mysqli php7-fpm phpmyadmin\
        openrc nginx supervisor

# RUN     apk update \                                                                                                                                                                                                                        
#         &&   apk add ca-certificates wget \                                                                                                                                                                                                      
#         &&   update-ca-certificates  

#RUN apt-get -y install mariadb-server nano

#RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048\
#    -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj\
#    "/C=RU/ST=Moscow/L=Moscow/O=Romashka/OU=school21/emailAddress=lortrem@mail.ru"

#RUN     wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz
#RUN		tar -xf phpMyAdmin-5.1.0-all-languages.tar.gz
#
#RUN	 	rm -rf phpMyAdmin-5.1.0-all-languages.tar.gz
#RUN	    mv phpMyAdmin-5.1.0-all-languages /www
RUN 	mkdir -p /run/nginx && chown nginx:nginx /run/nginx
RUN		mkdir -p /var/tmp/phpmyadmin && chown nginx:nginx /var/tmp/phpmyadmin && chmod 777 /var/tmp/phpmyadmin
RUN		mkdir -p /www/phpmyadmin

COPY    ./config.inc.php /etc/phpmyadmin/
COPY	./supervisord.conf /etc/supervisord.conf
COPY    ./nginx.conf /etc/nginx/conf.d/default.conf
RUN		cp -r /usr/share/webapps/phpmyadmin/* /var/www/localhost/htdocs
RUN 	chown -R nginx:nginx /var/www/localhost/htdocs
#RUN 	chmod 755 /etc/phpmyadmin/config.inc.php

EXPOSE	5000

ENTRYPOINT /usr/bin/supervisord -c /etc/supervisord.conf
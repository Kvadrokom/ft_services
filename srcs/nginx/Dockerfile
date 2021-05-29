FROM alpine:3.12

RUN apk update && apk upgrade

RUN	apk add nginx openssl openrc

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048\
  -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj\
  "/C=RU/ST=Moscow/L=Moscow/O=Romashka/OU=school21/emailAddress=lortrem@mail.ru"

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /run/nginx/

RUN	mkdir -p /data/www

COPY ./index.html /data/www

CMD ["nginx", "-g", "daemon off;"]

#docker system prune -a -f //чистим
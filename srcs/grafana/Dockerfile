FROM	alpine:3.12

WORKDIR	/usr/share/grafana

RUN     apk update && apk upgrade

RUN     apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY    run.sh ./

COPY    default.ini /usr/share/grafana/conf/custom.ini

RUN     mkdir -p /var/lib/grafana_dashboards/
COPY    dashboards/mysql.json /var/lib/grafana_dashboards/

EXPOSE  3000

ENTRYPOINT sh run.sh
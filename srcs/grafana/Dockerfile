FROM	alpine:3.12

RUN     apk update && apk upgrade

RUN     apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY	dashboards.yaml /usr/share/grafana/conf/provisioning/dashboards/influxdb.yaml

COPY	datasources.yaml /usr/share/grafana/conf/provisioning/datasources/influxdb.yaml

COPY    run.sh ./

COPY    default.ini /usr/share/grafana/conf/custom.ini

RUN     mkdir -p /var/lib/grafana_dashboards/
COPY    dashboards/dashboard1.json /var/lib/grafana_dashboards/

EXPOSE  3000

ENTRYPOINT ["sh", "run.sh"]
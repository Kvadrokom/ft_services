FROM  	alpine:3.12

RUN		apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

RUN		mkdir -p /etc/telegraf/

RUN 	telegraf -sample-config --input-filter cpu:mem --output-filter influxdb > telegraf.conf

COPY    telegraf.conf /etc/telegraf/telegraf.conf

CMD     ["telegraf"]
minikube start --vm-driver=virtualbox



eval $(minikube docker-env)

docker pull metallb/speaker:v0.8.2
docker pull metallb/controller:v0.8.2
minikube addons enable metallb
kubectl apply -f configmap.yaml
# minikube addons enable dashboard
# minikube addons enable metrics-server


#nginx
docker build -t nginx-image srcs/nginx
kubectl apply -f srcs/nginx/nginx.yaml

#pma
docker build -t phpmyadmin srcs/php/
kubectl apply -f srcs/php/

#mysql
docker build -t mysql srcs/mysql/
kubectl apply -f srcs/mysql/

# #brew reinstall minikube

#wp
docker build -t wp srcs/wp/
kubectl apply -f srcs/wp/

#influx
docker build -t influxdb srcs/influxdb/
kubectl apply -f srcs/influxdb/
#telegraf
docker build -t telegraf srcs/telegraf/
kubectl apply -f srcs/telegraf/
#grafana
docker build -t grafana srcs/grafana/
kubectl apply -f srcs/grafana/grafana_svc.yaml
kubectl apply -f srcs/grafana/grafana.yaml

#ftps
docker build -t ftps srcs/ftp
kubectl apply -f srcs/ftp

minikube dashboard &
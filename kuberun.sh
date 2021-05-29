minikube start --vm-driver=virtualbox
eval $(minikube docker-env)

minikube addons enable metallb
minikube addons enable dashboard
minikube addons enable metrics-server
kubectl apply -f configmap.yaml

docker build -t nginx-image srcs/nginx
kubectl apply -f srcs/nginx/nginx.yaml
eval $(minikube docker-env)

docker build -t phpmyadmin srcs/php/
docker build -t mysql srcs/mysql/
docker build -t wp srcs/wp/
docker build -t influxdb srcs/influxdb/
docker build -t grafana srcs/grafana/

kubectl apply -f srcs/php/

kubectl apply -f srcs/mysql/

kubectl apply -f srcs/wp/

kubectl apply -f srcs/influxdb/

kubectl apply -f srcs/grafana/

minikube addons enable metrics-server
minikube dashboard &
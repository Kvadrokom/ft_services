mv .minikube ./goinfre/.minikube
ln -s ./goinfre/.minikube .minikube
#eval $(minikube docker-env)
#minikube start --vm-driver=virtualbox
#docker build -t nginx-image .
#minikube addons enable metallb
kubectl apply -f nginx.yaml
minikube addons list
minikube addons enable dashboard
minikube dashboard
kubectl delete deploy nginx-deployment
rm -f .minikube
kubectl run kubia --image=luksa/kubia --port=8080 --generator=run/v1 #Самый простой способ развертывания приложения
kubectl get replicationcontrollers
kubectl expose rc kubia --type=LoadBalancer --name kubia-http #создание

kubectl logs nginx -p # logs

#объекта Service
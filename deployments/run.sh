kubectl apply -f ./configs/aws-secret.yaml
kubectl apply -f ./configs/env-secret.yaml
kubectl apply -f ./configs/env-configmap.yaml
kubectl apply -f ./services/backend-feed-deployment.yaml
kubectl apply -f ./services/backend-feed-service.yaml
kubectl apply -f ./services/backend-user-deployment.yaml
kubectl apply -f ./services/backend-user-service.yaml 
kubectl apply -f ./services/reverseproxy-deployment.yaml
kubectl apply -f ./services/reverseproxy-service.yaml
kubectl apply -f ./services/frontend-deployment.yaml
kubectl apply -f ./services/frontend-service.yaml

kubectl expose deployment reverseproxy --type=LoadBalancer --name=reverseproxy-ep --port=8080
kubectl expose deployment frontend --type=LoadBalancer --name=frontend-ep

kubectl get deployment
kubectl get services
kubectl get pods


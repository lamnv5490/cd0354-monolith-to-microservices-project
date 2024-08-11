kubectl delete deployment frontend
kubectl delete service frontend
kubectl delete service frontend-ep

kubectl delete deployment backend-user
kubectl delete services backend-user

kubectl delete deployment backend-feed
kubectl delete services backend-feed

kubectl delete deployment reverseproxy
kubectl delete services reverseproxy
kubectl delete services reverseproxy-ep
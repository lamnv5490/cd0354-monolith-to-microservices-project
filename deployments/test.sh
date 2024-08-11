URL=$(kubectl get service reverseproxy-ep -o=jsonpath='{.status.loadBalancer.ingress[0].hostname}')
curl -k "http://$URL:8080/api/v0/feed"
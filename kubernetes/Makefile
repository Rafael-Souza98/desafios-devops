IMAGE=app-node:1.0

build:
	docker buildx build -t $(IMAGE) .

cluster: build
	@minikube start --driver=docker --nodes 4 -p k8s-desafio
	@minikube -p k8s-desafio --daemon=true image load $(IMAGE)
	@helm upgrade app-node helm/app-node \
		--install \
		--values helm/app-node/values.yaml
		
	@kubectl wait --for=condition=Ready pod -l app.kubernetes.io/name=app-node --timeout=15s
	@kubectl port-forward services/app-node 3000:3000


delete:
	@minikube delete -p k8s-desafio   


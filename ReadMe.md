# OpenLiberty Sample Image with War

## Prepare your WAR file

Ensure you have the WAR file for your application ready Example *io.openliberty.sample.getting.started.war*


## Create Docker file

## Create Server xml

Create the server.xml

## Build the Docker Image

````
docker build -t io.openliberty.sample.getting.started .
```` 
## Run the Docker Container

````
docker run -d \
  -p 9080:9080 -p 9443:9443 \
  -e HTTP_HOST=0.0.0.0 \
  -e HTTP_PORT=8080 \
  -e HTTPS_PORT=8443 \
  -e APP_LOCATION=example.war \
  --name my-app io.openliberty.sample.getting.started

```` 

## Deploying to Kubernetes

````
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

kubectl get deployments
kubectl get services

kubectl get service openliberty-service
````

Access via http://<EXTERNAL-IP>.



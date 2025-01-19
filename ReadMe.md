# OpenLiberty Sample Image with War

## Prepare your WAR file

Ensure you have the WAR file for your application ready. Example io.openliberty.sample.getting.started.war build from the [github repo](https://github.com/OpenLiberty/sample-getting-started/tree/main)

## Create Docker file

Create the Dockerfile.

## Create Server xml

Create the server.xml

## Build the Docker Image

````
docker build -t my-openliberty-app .
```` 
## Run the Docker Container
Example to pass environment variable values mapped in the server.xml
````
docker run -d \
  -p 9080:9080 -p 9443:9443 \
  -e HTTP_HOST=0.0.0.0 \
  -e HTTP_PORT=8080 \
  -e HTTPS_PORT=8443 \
  -e APP_LOCATION=my-openliberty-app \
  --name my-app my-openliberty-app

```` 

## Deploying to Kubernetes

````
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

kubectl get deployments
kubectl get services

kubectl get service openliberty-service
````

Access via http://EXTERNAL-IP or NodePort



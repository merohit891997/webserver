# Apache2 Dockerfile Based Project

## Build the project 
docker build -t apache-project:latest  .

## Create the contianer
docker run -itd  --name=web1  -p 8080:8080  apache-project:latest

## Check the running container
docker ps -a

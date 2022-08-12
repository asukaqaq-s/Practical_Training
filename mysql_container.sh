#!/bin/bash


# pull 

docker pull mysql:latest

# run

docker run -itd --name mysql --restar=always -p 3306:3306 -e MYSQL_ROOT_PASSWORD=shixun2022 mysql

# enter

docker exec -it mysql bash

# login

mysql -u root -p




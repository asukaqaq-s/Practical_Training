# !/bin/bash

# pull the image

docker pull httpd


# build the folder

mkdir /opt/WebData

# build the html file 

touch /opt/WebData/index.html

# print the disk and hostname to index.html

lsblk | grep nvme0n1 > /opt/WebData/index.html

echo -e "\n" >> /opt/WebData/index.html

hostnamectl | grep hostname >> /opt/WebData/index.html

# create the web container

docker run -itd -p 8899:80 --name web --restart always -v /opt/WebData/:/usr/local/apache2/htdocs/ httpd



#!/bin/sh
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

git clone https://git.cs.oslomet.no/kyrre.begnum/bookface
cd bookface

echo  '<?php $frontpage_limit = "500";$dbhost = "192.168.128.22";$dbport = "26257";$db = "bf";$dbuser = "bfuser";$dbpassw = '';$webhost = '10.212.136.70';$weburl = 'http://' . $webhost ;?>' > ./config.php

sudo docker build -t "newwebserver:v1" .
sudo docker run -P -d newwebserver:v1

sudo docker ps

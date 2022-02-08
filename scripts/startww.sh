#!/bin/bash

ssh -i '/home/ubuntu/managerkey.pem' ubuntu@192.168.131.50 \
	"sudo service apache2 start"

ssh -i '/home/ubuntu/managerkey.pem' ubuntu@192.168.131.182 \
"sudo service apache2 start"

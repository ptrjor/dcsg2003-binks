#!/bin/bash
ssh -i '/home/ubuntu/managerkey.pem' ubuntu@192.168.132.184 \
        "sudo service haproxy start"

#!/bin/bash
ls $1
if [ $? -gt  0 ]
then echo "Error code above 0. ERROR!"
else
echo "Success!"
fi

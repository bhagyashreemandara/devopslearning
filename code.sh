#!/bin/bash
#sudo apt-get update &> /dev/null
#sudo apt-get install apache2  -y

sudo dpkg -l apache &> /dev/null
if [ $? -eq 0 ]; then
        echo "Already installed"
else
   echo "not installed"
fi

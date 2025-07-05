#!/bin/bash

# Learning the Shell Scripting

# Checking the installed packages
echo "Checking the list of installed packages"
sudo dpkg -l apache &> /dev/null

if [ $? -eq 0 ]; then
        echo "Apache is already installed"
else
        echo "Apache is not installed"
        # Attempting second installation
        echo "Attempting to install Apache now"
        sudo apt-get update &> /dev/null
        sudo apt-get install apache2 -y &> /dev/null
        if [ $? -eq 0 ]; then
                echo "Apache has been successfully installed"
        else
                echo "Apache is not installed"
        fi
fi


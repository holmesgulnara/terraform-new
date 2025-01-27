#!/bin/bash
sudo apt update
sudo apt isntall apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

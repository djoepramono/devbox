#!/bin/bash

sudo groupadd docker
sudo usermod -aG docker $USER

echo "Please log out from ubuntu and log back in"

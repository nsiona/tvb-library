#!/bin/bash

echo "Provisioning virtual machine..."

echo "Installing Git"
apt-get install git -y


echo "Update and upgrade the server packages"   
sudo apt-get update
sudo apt-get -y upgrade

echo "Set Ubuntu Language"   
sudo locale-gen en_GB.UTF-8

echo "Install Python" 
sudo apt-get install -y python2.7

echo "Preparing Miniconda"
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
sudo mv Miniconda2-latest-Linux-x86_64.sh /opt/ && sudo chmod 777 Miniconda2-latest-Linux-x86_64.sh

echo "Installing Miniconda"
sudo bash /opt/Miniconda2-latest-Linux-x86_64.sh

echo "Install pip, Cythonm numpy and scipy as dependencies from Miniconda."
conda install pip Cython numpy scipy

#!/bin/bash
# Install jenkins
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install fontconfig openjdk-21-jre
sudo apt-get install jenkins

# Remove Jenkins

sudo apt-get remove --purge jenkins

############

# Install nginx
sudo apt-get install nginx

# Remove nginx
sudo apt-get remove --purge nginx nginx-full nginx-common

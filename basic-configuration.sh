#!/bin/bash -ex

# Add basic user
sudo su
adduser tory

# Get updates
sudo apt-get update

# Install git (comes pre-installed so commented out)
#sudo apt-get install git

# Install JDK
sudo apt-get install openjdk-8-jdk
java -version

# Add Jenkins key and repository
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

# Install Jenkins
sudo apt-get update
sudo apt-get install jenkins

# Start Jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

# To get Jenkins password 
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

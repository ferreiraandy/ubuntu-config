sudo apt install vim

sudo apt install git

# Generate key ssh

ssh-keygen -t rsa -b 4096 -C "your_email@gmail.com"

# Adding a new SSH key to your GitHub account

sudo apt-get install xclip

# Copies the contents of the id_rsa.pub file to your clipboard
xclip -sel clip < ~/.ssh/id_rsa.pub

# Configures nvim
https://github.com/ferreiraandy/.vim

# Install nvm

sudo apt install curl

https://github.com/creationix/nvm#install--update-script

# reload terminal

nvm install node

# rvm

\curl -sSL https://get.rvm.io | bash

# Mongo

https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/

# Redis

https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04

# PG

sudo apt-get update

sudo apt-get install postgresql

## Alterando a senha para o usuario postgres

sudo passwd postgres 

su postgres 

psql -c "ALTER USER postgres WITH PASSWORD 'nova_senha'" -d template1 

# JRE JDK

sudo add-apt-repository ppa:webupd8team/java

sudo apt update; sudo apt install oracle-java8-installer

javac -version

sudo apt install oracle-java8-set-default

# Gradle

wget https://services.gradle.org/distributions/gradle-5.0-bin.zip -P /tmp


sudo unzip -d /opt/gradle /tmp/gradle-*.zip

ls /opt/gradle/gradle-5.0

> should show something like: bin  getting-started.html  init.d  lib  LICENSE  media  NOTICE

sudo vim /etc/profile.d/gradle.sh

paste:

export GRADLE_HOME=/opt/gradle/gradle-5.0
export PATH=${GRADLE_HOME}/bin:${PATH}

sudo chmod +x /etc/profile.d/gradle.sh

source /etc/profile.d/gradle.sh

gradle -v

# Android Studio/SDK

Install via software center or apt

After install acept licenses:

~./Android/Sdk/tools/bin/sdkmanager --licenses

# Heroku

snap install heroku --classic

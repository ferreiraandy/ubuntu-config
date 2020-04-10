# Configuring a new device

```shell
sudo apt install vim
sudo apt install git
sudo apt-get install xclip
sudo apt install curl
sudo apt install snap
```

### Generate key ssh
```shell
ssh-keygen -t rsa -b 4096 -C "your_email@gmail.com"
```
###  Adding a new SSH key to your GitHub account

### Copies the contents of the id_rsa.pub file to your clipboard
```shell
xclip -sel clip < ~/.ssh/id_rsa.pub
```
### Configures nvim
https://github.com/ferreiraandy/.vim

## Nvm

https://github.com/creationix/nvm#install--update-script

- reload terminal

```shell
nvm install node
```
## Rvm
```shell
\curl -sSL https://get.rvm.io | bash
```
## Redis

https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04

## PG
```shell
sudo apt-get update
sudo apt-get install postgresql
```
### Alterando a senha para o usuario postgres
```shell
sudo passwd postgres

su postgres

psql -c "ALTER USER postgres WITH PASSWORD 'nova_senha'" -d template1
```
## JRE JDK
```shell
sudo add-apt-repository ppa:webupd8team/java

sudo apt update; sudo apt install oracle-java8-installer

javac -version

sudo apt install oracle-java8-set-default
```
## Gradle
```shell
wget https://services.gradle.org/distributions/gradle-5.0-bin.zip -P /tmp

sudo unzip -d /opt/gradle /tmp/gradle-*.zip

ls /opt/gradle/gradle-5.0
```
> should show something like: bin  getting-started.html  init.d  lib  LICENSE  media  NOTICE
```shell
sudo vim /etc/profile.d/gradle.sh
```
paste:
```shell
export GRADLE_HOME=/opt/gradle/gradle-5.0
export PATH=${GRADLE_HOME}/bin:${PATH}

sudo chmod +x /etc/profile.d/gradle.sh

source /etc/profile.d/gradle.sh

gradle -v
```
# Android Studio/SDK

Install via software center or apt

After install acept licenses:
```shell
~./Android/Sdk/tools/bin/sdkmanager --licenses
```
## Heroku
```shell
snap install heroku --classic
```
## Postman

```shell
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
```

```shell
sudo tar -xzf postman.tar.gz -C /opt
```
```shell
rm postman.tar.gz
```

```shell
sudo ln -s /opt/Postman/Postman /usr/bin/postman
```
```shell
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL
```
## PGAdmin4

```shell
sudo apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt install pgadmin4 pgadmin4-apache2
```


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

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-9.4 pgadmin3

## Alterando a senha para o usuario postgres

sudo passwd postgres 

su postgres 

psql -c "ALTER USER postgres WITH PASSWORD 'nova_senha'" -d template1 

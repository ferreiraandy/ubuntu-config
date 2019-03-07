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

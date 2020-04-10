echo "========================================================================="
echo "                     Starting installations                              "
echo "========================================================================="

echo "Please enter your Name:"
read name

echo "Please enter your github loggin:"
read loggin

sudo apt install vim git xclip curl snap
ssh-keygen -t rsa -b 4096 -C $loggin

xclip -sel clip < ~/.ssh/id_rsa.pub
git clone https://github.com/ferreiraandy/.vim.git
ln -s ~/.vim/.vimrc ~/.vimrc
rm -rf ~/.vim/plugged/*

sudo apt install silversearcher-ag
sudo apt-get install ack-grep
sudo apt install ctags
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip

mkdir .config/nvim

cat > ~/.config/nvim/init.vim <<EOL
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  source ~/.vimrc
EOL

sudo apt install python3-pip
pip3 install neovim
sudo apt install tig

export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'

cat > ~/.gitconfig <<EOL
  [user]
    name = $name
    email = $loggin
  [core]
    editor = nvim
    excludesfile = ~/.gitignore
  [merge]
    tool = vimdiff
  [diff]
    tool = vimdiff
  [difftool]
    prompt = false
  [alias]
    d = difftool
EOL

nvim .gitconfig

mkdir projects

echo "========================================================"
echo "               INSTALLING asdf...                       "
echo "========================================================"

# sudo apt install automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev unzip base-devel openssl-1.0 llvm

# git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8

# echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
# echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
# source ~/.bashrc
# asdf update --head

# asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

if [ "$PKG_OK" != "" ]; then
  sudo sh -c "echo '\ndeb http://security.ubuntu.com/ubuntu bionic-security main' >> /etc/apt/sources.list"
  sudo apt-get update
  sudo apt-get install libssl1.0-dev
  echo "INSTALLING RUBY 2.2.10"
  asdf install ruby 2.2.10
  echo 'You need to remove the last repository - Press enter to edit sources'
  read
  sudo sh -c "nano /etc/apt/sources.list"
fi

echo "INSTALLING RUBY 2.5.1"
asdf install ruby 2.5.1
echo "INSTALLING RUBY 2.6.2"
asdf install ruby 2.6.2
echo "INSTALLING RUBY 2.6.3"
asdf install ruby 2.6.3
echo "INSTALLING RUBY 2.6.4"
asdf install ruby 2.6.4

asdf global ruby 2.6.4

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

asdf update --head
asdf install nodejs 10.3.0
asdf reshim

# export PKG_CONFIG_PATH=/usr/lib/openssl-1.0/pkgconfig
# asdf install ruby 2.2.10

asdf plugin-add rust
asdf install rust 1.40.0

echo "========================================================"
echo "               INSTALLING SNAPS...                       "
echo "========================================================"

sudo snap install slack --classic
sudo snap install spotify --classic

echo "========================================================"
echo "               INSTALLING Postgres...                       "
echo "========================================================"

sudo apt install postgresql

sudo passwd postgres
# Enter new UNIX password:
# Retype new UNIX password:
# passwd: password updated successfully
# su postgres
# Password:

# asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

PKG_OK=$(asdf where ruby 2.2.10 | grep "Version not installed")

if [ "$PKG_OK" != "" ]; then
  sudo sh -c "echo '\ndeb http://security.ubuntu.com/ubuntu bionic-security main' >> /etc/apt/sources.list"
  sudo apt-get update
  sudo apt-get install libssl1.0-dev
  echo "INSTALLING RUBY 2.2.10"
  asdf install ruby 2.2.10
  echo 'You need to remove the last repository - Press enter to edit sources'
  read
  sudo sh -c "vim /etc/apt/sources.list"
fi

PKG_2_3_1_OK=$(asdf where ruby 2.3.1 | grep "Version not installed")

if [ "$PKG_2_3_1_OK" != "" ]; then
  sudo sh -c "echo '\ndeb http://security.ubuntu.com/ubuntu bionic-security main' >> /etc/apt/sources.list"
  sudo apt-get update
  sudo apt-get install libssl1.0-dev

  echo "INSTALLING RUBY 2.3.1"
  asdf install ruby 2.3.1

  echo 'You need to remove the last repository - Press enter to edit sources'
  read
  sudo sh -c "vim /etc/apt/sources.list"
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
asdf reshim
cd


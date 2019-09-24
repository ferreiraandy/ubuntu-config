echo "========================================================"
echo "               INSTALLING asdf...                       "
echo "========================================================"

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

if [ "$PKG_OK" != "" ]; then
  sudo sh -c "echo '\ndeb http://security.ubuntu.com/ubuntu bionic-security main' >> /etc/apt/sources.list"
  sudo apt-get update
  sudo apt-get install libssl1.0-dev
  echo "INSTALLING RUBY 2.2.10"
  # asdf install ruby 2.2.10
  echo 'You need to remove the last repository - Press enter to edit sources'
  read
  sudo sh -c "nano /etc/apt/sources.list"
fi
# echo "INSTALLING RUBY 2.5.1"
# asdf install ruby 2.5.1
# echo "INSTALLING RUBY 2.6.2"
# asdf install ruby 2.6.2
# echo "INSTALLING RUBY 2.6.3"
# asdf install ruby 2.6.3
echo "INSTALLING RUBY 2.6.4"
asdf install ruby 2.6.4
asdf global ruby 2.6.4
asdf reshim


echo "========================================================"
echo "               INSTALLING vim...                       "
echo "========================================================"
sudo apt install vim

echo "========================================================"
echo "               INSTALLING git ...                       "
echo "========================================================"
sudo apt install git

echo "========================================================"
echo "               INSTALLING xclip ...                     "
echo "========================================================"
sudo apt-get install xclip

echo "========================================================"
echo "               INSTALLING curl ...                      "
echo "========================================================"
sudo apt install curl

echo "========================================================"
echo "               INSTALLING snap ...                      "
echo "========================================================"
sudo apt install snap

echo "to implement config environment to git, nvim, "
echo "postgres, mysql, node, redis, etc"
cd


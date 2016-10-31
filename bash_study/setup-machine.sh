# Creating ~/opt/ folder
mkdir ~/opt

#Installing must have program
sudo apt-get install -y vim git curl rar htop

# Software to configurate dual screen http://askubuntu.com/questions/25339/configuration-tools-for-multiple-monitors-for-x-linux
sudo apt-get install arandr

# Installing Sublime Text 2
# http://askubuntu.com/questions/172698/how-do-i-install-sublime-text-2-3

sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text
# Install sublime package installer
# https://packagecontrol.io/installation#st3

# Useful packages
# gitgutter
# git

# Install Ruby on Ubuntu 16.04
# Based on https://gorails.com/setup/ubuntu/16.04

sudo apt-get update
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

sudo apt-get install -y libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.3.1
rvm use 2.3.1 --default
ruby -v

# Install Bundler

gem install bundler

# Install NodeJs

curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install PostgreSQL

sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-common
sudo apt-get install postgresql-9.5 libpq-dev

# Install Oracle Java 8 SDK
# Based on http://tecadmin.net/install-oracle-java-8-jdk-8-ubuntu-via-ppa

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

# Check the installation
java -version


# About PATH http://www.linfo.org/path_env_var.html
# About symbolic links http://ubuntuhak.blogspot.com.br/2013/04/symbolic-links-in-ubuntu.html
# About env variables http://www.computerhope.com/issues/ch001647.htm https://help.ubuntu.com/community/EnvironmentVariables

# Install Zsh & Oh-my-Zsh
sudo apt-get install zsh
chsh -s $(which zsh)

# Set correct integration terminal
#https://rvm.io/integration/konsole

# https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install Dropbox

#https://www.dropbox.com/install-linux
wget wget -O 'dropbox_2015.10.28_amd64.deb' - 'https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb'
sudo dpkg -i dropbox_2015.10.28_amd64.deb
rm dropbox_2015.10.28_amd64.deb
#execute dropbox to finish the instalation

#Install Chrome
# https://www.google.com.br/chrome/browser/desktop/

# Install skype
# https://www.skype.com/en/download-skype/skype-for-linux/

# Install Franz
# meetfranz.com

# Generate github key
# https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -t rsa -b 4096 -C "email@email.com"
ssh-add <private-key>
sh -T git@github.com
#copy key to github

# Install Spotify
# https://www.spotify.com/br/download/linux/
# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client


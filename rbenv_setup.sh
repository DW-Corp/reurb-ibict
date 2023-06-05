#!/bin/bash

# Update the package list
sudo apt update

# Install the necessary packages for building Ruby
sudo apt install -y curl git build-essential libssl-dev libreadline-dev zlib1g-dev

# Install rbenv using git
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

echo 'eval "$(/home/dw_corp/.rbenv/bin/rbenv init - zsh)"' | tee -a ~/.zshrc

# Install the ruby-build plugin for rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# Install Ruby using rbenv
rbenv install 3.2.2
rbenv global 3.2.2

# Install bundler
gem install bundler -v 2.4.10
gem install rails

sudo apt-get install libpq-dev
gem install pg
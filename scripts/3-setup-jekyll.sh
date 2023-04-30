#! /bin/bash

# Colors
LIGHT_GREEN='\033[1;32m'
NC='\033[0m' # No Color

ln -s ${SETUP_LINUXBOX}/.my_bash_aliases ~/.my_bash_aliases
sudo apt-get install ruby-full build-essential zlib1g-dev -y
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
gem install jekyll bundler

echo -e 'Run: '"$LIGHT_GREEN"'source ~/.bashrc'"$NC"
echo -e 'Run: '"$LIGHT_GREEN"'gem install jekyll bundler'"$NC"

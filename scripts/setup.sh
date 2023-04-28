#! /bin/bash

# Colors
LIGHT_GREEN='\033[1;32m'
NC='\033[0m' # No Color

sudo apt-get install ruby-full build-essential zlib1g-dev
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc

echo -e run'"$LIGHT_GREEN"' source ~/.bashrc'"$NC"
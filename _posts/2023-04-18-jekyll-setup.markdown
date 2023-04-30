---
layout: post
title:  "Jekyll Prerequisites Setup"
date:   2023-04-18 10:00:00 -0800
categories: setup
---

## Get Started

Something like this:

```bash
#! /bin/bash

sudo apt-get install ruby-full build-essential zlib1g-dev

echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

And then maybe:

``` bash
gem install jekyll bundler

mkdir Source && cd Source/
jekyll new myblog
cd myblog/
bundle add webrick
```

## Strategy A

bundle exec jekyll serve --port 30025

## Strategy B

```bash
bundle exec jekyll build
cd _site
StartPythonWebServer
```

## Strategy C (nginx)

```bash
bundle exec jekyll build
cd _site
sudo cp -r _site/* /var/www/html/.
```

See also the [nginx install document](/`jekyll/update/2023/04/18/nginx-basics.html).

## Bonus History

I want to make a change:

``` bash
   1  nano start.sh
    2  chmod +x start.sh
    3  ./start.sh
    4  sudo apt-get install ruby-full build-essential zlib1g-dev
    5  echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
    6  echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
    7  echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
    8  source ~/.bashrc
    9  gem install jekyll bundler
   10  ll
   11  mkdir Source
   12  cd Source/
   13  jekyll new myblog
   14  cd myblog/
   15  bundle add webrick
   16  bundle exec jekyll serve --port 30025
   17  cd _site/
   18  StartPythonWebServer
   19  history
```
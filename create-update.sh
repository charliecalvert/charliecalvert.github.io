 #! /bin/bash
 
 git pull
 bundle exec jekyll build
 sudo cp -r _site/* /var/www/html/.
 
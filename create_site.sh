#! /bin/bash

bundle install
bundle update
bundle exec jekyll build
echo "Jekyll build done"
echo "calling sass"
sass _sass:_site/assets/css
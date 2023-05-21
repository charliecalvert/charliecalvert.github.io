---
layout: post
title:  "Docker Alpine Jekyll"
date:   2023-04-17 13:00:00 -0800
categories: jekyll update
---

We will need two extensions:

1. Docker 
Remote Development
1. [Dev Containers](https://containers.dev/implementors/json_reference/)

Create a repo, mine is called [docker-jekyll](https://github.com/charliecalvert/docker-jekyll)

At the top right of Jekyll site you can see the latest. For instance [Version 4.3.2](https://github.com/jekyll/jekyll/releases/tag/v4.3.2)

Go to the [Docker Hub](https://hub.docker.com/). Search on [ruby alpine](https://hub.docker.com/search?q=ruby%20alpine). So as of 2023-04-17, for vanilla Jekyll use [ruby 3.2 alpine 3.17](https://github.com/docker-library/ruby/blob/4041b21f3e11111846e6b6043da2da92e1da7019/3.2/alpine3.17/Dockerfile). For Github Pages, use Ruby 2.X and Alpine 3.X).

Create this dockerfile:

``` dockerfile
# Create Jekyll container.
FROM ruby:3.2.0-alpine3.17

# Install Jekyll and dependencies.
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Install Jekyll.
# RUN gem install jekyll bundler
RUN gem update bundler && gem install bundler jekyll
```

Then open the container at the command pallet (dev containers: open folder in container) and do this:

``` shell
/workspaces/docker-jekyll # bundle init
Writing new Gemfile to /workspaces/docker-jekyll/Gemfile
/workspaces/docker-jekyll # bundle add jekyll --version "~>4.3.2"
Fetching gem metadata from https://rubygems.org/............
etc

/workspaces/docker-jekyll # bundle exec jekyll new --force --skip-bundle .
/workspaces/docker-jekyll # bundle add webrick
/workspaces/docker-jekyll # bundle install
/workspaces/docker-jekyll # bundle update

```

## Bonus

just for the record here is the complete run in the container:

```
/workspaces/docker-jekyll # bundle init
Writing new Gemfile to /workspaces/docker-jekyll/Gemfile
/workspaces/docker-jekyll # bundle add jekyll --version "~>4.3.2"
Fetching gem metadata from https://rubygems.org/............
Resolving dependencies...
Using public_suffix 5.0.1
Using addressable 2.8.4
Using bundler 2.4.12
Using colorator 1.1.0
Using concurrent-ruby 1.2.2
Using eventmachine 1.2.7
Using http_parser.rb 0.8.0
Using em-websocket 0.5.3
Using ffi 1.15.5
Using forwardable-extended 2.6.0
Using google-protobuf 3.22.3 (x86_64-linux)
Using i18n 1.12.0
Using sass-embedded 1.62.0 (x86_64-linux-musl)
Using jekyll-sass-converter 3.0.0
Using rb-fsevent 0.11.2
Using rb-inotify 0.10.1
Using listen 3.8.0
Using jekyll-watch 2.2.1
Using rexml 3.2.5
Using kramdown 2.4.0
Using kramdown-parser-gfm 1.1.0
Using liquid 4.0.4
Using mercenary 0.4.0
Using pathutil 0.16.2
Using rouge 4.1.0
Using safe_yaml 1.0.5
Using unicode-display_width 2.4.2
Using terminal-table 3.0.2
Using webrick 1.8.1
Using jekyll 4.3.2
/workspaces/docker-jekyll # bundle exec jekyll new --force --skip-bundle .
New jekyll site installed in /workspaces/docker-jekyll. 
Bundle install skipped. 
/workspaces/docker-jekyll # bundle add webrick
Fetching gem metadata from https://rubygems.org/...........
Resolving dependencies...
Fetching gem metadata from https://rubygems.org/...........
Resolving dependencies...
Using public_suffix 5.0.1
Using bundler 2.4.12
Using colorator 1.1.0
Using concurrent-ruby 1.2.2
Using eventmachine 1.2.7
Using i18n 1.12.0
Using http_parser.rb 0.8.0
Using ffi 1.15.5
Using google-protobuf 3.22.3 (x86_64-linux)
Using rb-fsevent 0.11.2
Using em-websocket 0.5.3
Using liquid 4.0.4
Using rb-inotify 0.10.1
Using rexml 3.2.5
Using safe_yaml 1.0.5
Using unicode-display_width 2.4.2
Using webrick 1.8.1
Using kramdown 2.4.0
Using forwardable-extended 2.6.0
Using kramdown-parser-gfm 1.1.0
Using mercenary 0.4.0
Using pathutil 0.16.2
Using rouge 4.1.0
Using addressable 2.8.4
Using terminal-table 3.0.2
Using sass-embedded 1.62.0 (x86_64-linux-musl)
Using listen 3.8.0
Using jekyll-sass-converter 3.0.0
Using jekyll-watch 2.2.1
Using jekyll 4.3.2
Fetching jekyll-feed 0.17.0
Fetching jekyll-seo-tag 2.8.0
Installing jekyll-feed 0.17.0
Installing jekyll-seo-tag 2.8.0
Fetching minima 2.5.1
Installing minima 2.5.1
/workspaces/docker-jekyll # bundle install
Using public_suffix 5.0.1
Using addressable 2.8.4
Using bundler 2.4.12
Using colorator 1.1.0
Using concurrent-ruby 1.2.2
Using eventmachine 1.2.7
Using http_parser.rb 0.8.0
Using em-websocket 0.5.3
Using ffi 1.15.5
Using forwardable-extended 2.6.0
Using google-protobuf 3.22.3 (x86_64-linux)
Using i18n 1.12.0
Using sass-embedded 1.62.0 (x86_64-linux-musl)
Using jekyll-sass-converter 3.0.0
Using rb-fsevent 0.11.2
Using rb-inotify 0.10.1
Using listen 3.8.0
Using jekyll-watch 2.2.1
Using rexml 3.2.5
Using kramdown 2.4.0
Using kramdown-parser-gfm 1.1.0
Using liquid 4.0.4
Using mercenary 0.4.0
Using pathutil 0.16.2
Using rouge 4.1.0
Using safe_yaml 1.0.5
Using unicode-display_width 2.4.2
Using terminal-table 3.0.2
Using webrick 1.8.1
Using jekyll 4.3.2
Using jekyll-feed 0.17.0
Using jekyll-seo-tag 2.8.0
Using minima 2.5.1
Bundle complete! 8 Gemfile dependencies, 33 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
/workspaces/docker-jekyll # bundle update
Fetching gem metadata from https://rubygems.org/............
Resolving dependencies...
Using public_suffix 5.0.1
Using bundler 2.4.12
Using addressable 2.8.4
Using concurrent-ruby 1.2.2
Using http_parser.rb 0.8.0
Using ffi 1.15.5
Using forwardable-extended 2.6.0
Using google-protobuf 3.22.3 (x86_64-linux)
Using rb-fsevent 0.11.2
Using rexml 3.2.5
Using liquid 4.0.4
Using kramdown 2.4.0
Using rouge 4.1.0
Using mercenary 0.4.0
Using unicode-display_width 2.4.2
Using webrick 1.8.1
Using eventmachine 1.2.7
Using terminal-table 3.0.2
Using colorator 1.1.0
Using i18n 1.12.0
Using rb-inotify 0.10.1
Using sass-embedded 1.62.0 (x86_64-linux-musl)
Using safe_yaml 1.0.5
Using jekyll-sass-converter 3.0.0
Using em-websocket 0.5.3
Using pathutil 0.16.2
Using listen 3.8.0
Using kramdown-parser-gfm 1.1.0
Using jekyll-watch 2.2.1
Using jekyll 4.3.2
Using jekyll-feed 0.17.0
Using jekyll-seo-tag 2.8.0
Using minima 2.5.1
Bundle updated!
/workspaces/docker-jekyll # bundle exec jekyll serve --livereload
Configuration file: /workspaces/docker-jekyll/_config.yml
            Source: /workspaces/docker-jekyll
       Destination: /workspaces/docker-jekyll/_site
 Incremental build: disabled. Enable with --incremental
      Generating... 
       Jekyll Feed: Generating feed for posts
Deprecation Warning: Using / for division outside of calc() is deprecated and will be removed in Dart Sass 2.0.0.

Recommendation: math.div($spacing-unit, 2) or calc($spacing-unit / 2)

More info and automated migrator: https://sass-lang.com/d/slash-div

   ╷
40 │   margin-bottom: $spacing-unit / 2;
   │                  ^^^^^^^^^^^^^^^^^
   ╵
    ../../../../minima-2.5.1/_sass/minima/_base.scss 40:18  @import
    minima.scss 48:3                                        @import
    /workspaces/docker-jekyll/assets/main.scss 1:9          root stylesheet
Deprecation Warning: Using / for division outside of calc() is deprecated and will be removed in Dart Sass 2.0.0.

Recommendation: math.div($spacing-unit, 2) or calc($spacing-unit / 2)

More info and automated migrator: https://sass-lang.com/d/slash-div

    ╷
134 │   padding-left: $spacing-unit / 2;
    │                 ^^^^^^^^^^^^^^^^^
    ╵
    ../../../../minima-2.5.1/_sass/minima/_base.scss 134:17  @import
    minima.scss 48:3                                         @import
    /workspaces/docker-jekyll/assets/main.scss 1:9           root stylesheet
Deprecation Warning: Using / for division outside of calc() is deprecated and will be removed in Dart Sass 2.0.0.

Recommendation: math.div($spacing-unit, 2) or calc($spacing-unit / 2)

More info and automated migrator: https://sass-lang.com/d/slash-div

    ╷
189 │     padding-right: $spacing-unit / 2;
    │                    ^^^^^^^^^^^^^^^^^
    ╵
    ../../../../minima-2.5.1/_sass/minima/_base.scss 189:20  @content
    minima.scss 38:5                                         media-query()
    ../../../../minima-2.5.1/_sass/minima/_base.scss 186:3   @import
    minima.scss 48:3                                         @import
    /workspaces/docker-jekyll/assets/main.scss 1:9           root stylesheet
Deprecation Warning: Using / for division outside of calc() is deprecated and will be removed in Dart Sass 2.0.0.

Recommendation: math.div($spacing-unit, 2) or calc($spacing-unit / 2)

More info and automated migrator: https://sass-lang.com/d/slash-div

    ╷
190 │     padding-left: $spacing-unit / 2;
    │                   ^^^^^^^^^^^^^^^^^
    ╵
    ../../../../minima-2.5.1/_sass/minima/_base.scss 190:19  @content
    minima.scss 38:5                                         media-query()
    ../../../../minima-2.5.1/_sass/minima/_base.scss 186:3   @import
    minima.scss 48:3                                         @import
    /workspaces/docker-jekyll/assets/main.scss 1:9           root stylesheet
Deprecation Warning: Using / for division outside of calc() is deprecated and will be removed in Dart Sass 2.0.0.

Recommendation: math.div($spacing-unit, 3) or calc($spacing-unit / 3)

More info and automated migrator: https://sass-lang.com/d/slash-div

    ╷
244 │     padding: ($spacing-unit / 3) ($spacing-unit / 2);
    │               ^^^^^^^^^^^^^^^^^
    ╵
    ../../../../minima-2.5.1/_sass/minima/_base.scss 244:15  @import
    minima.scss 48:3                                         @import
    /workspaces/docker-jekyll/assets/main.scss 1:9           root stylesheet
Warning: 6 repetitive deprecation warnings omitted.
Run in verbose mode to see all warnings.
                    done in 0.294 seconds.
 Auto-regeneration: enabled for '/workspaces/docker-jekyll'
LiveReload address: http://127.0.0.1:35729
    Server address: http://127.0.0.1:4000/
  Server running... press ctrl-c to stop.
[2023-04-17 15:56:29] ERROR `/favicon.ico' not found.
^C/workspaces/docker-jekyll # 
```


# Create a Jekyll Container from Ruby Image
# Version requirements are here: https://pages.github.com/versions/

#FROM ruby:2.7

FROM ruby:2.7-alpine3.15
# Uncomment the following line if you want to use the latest version of Jekyll:
# FROM ruby:3.0.3-alpine3.15

WORKDIR /workspaces/yfd-docs

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git


# copy Gemfiles into container to install all dependencies
# if you don't COPY Gemfiles* then run 'bundle init' below 
COPY Gemfile* ./

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll

# if you don't 'COPY Gemfile* ./' above, then run bundle init
# RUN bundle init
# RUN bundle add jekyll --version "3.9.2"
RUN bundle install && bundle update

#RUN bundle exec jekyll serve --config _config_local.yml

#EXPOSE 4000

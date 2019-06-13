FROM ruby:latest AS ft-rails

COPY CI_Jenkins_RubyonRails /opt/app/CI_Jenkins_RubyonRails

WORKDIR /opt/app/CI_Jenkins_RubyonRails

RUN ls -l

RUN cat Gemfile package.json

# RUN gem install
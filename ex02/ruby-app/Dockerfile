FROM ruby:2.5.1

RUN apt-get update  && apt-get install -y nodejs

RUN mkdir /testrails

WORKDIR /testrails

RUN gem install rails && rails new rails_app

WORKDIR /testrails/rails_app
FROM ruby

RUN apt-get update  && apt-get install -y nodejs yarn
#curl yarn

# RUN curl -o- -L https://yarnpkg.com/install.sh | bash

# RUN mkdir /testrails

# WORKDIR /testrails

RUN gem install rails

# RUN rails new --skip-bundle rails_app

RUN rails new rails_app

ADD webpacker.yml /rails_app/config

EXPOSE 3000

WORKDIR /rails_app


# RUN rails bundle install
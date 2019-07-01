FROM ruby:2.6.3

RUN apt-get update -qq && \
    apt-get install -y \
    netcat \
    telnet

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.0.1
RUN bundle install

COPY . .

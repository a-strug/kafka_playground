FROM ruby:2.6.3

RUN apt-get update -qq && \
    apt-get install -y \
    netcat \
    telnet

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /ruby

COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.0.1
RUN bundle install

COPY . .

#CMD ["./your-daemon-or-script.rb"]
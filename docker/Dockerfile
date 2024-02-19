FROM ruby:3.2.3
WORKDIR /app
RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install -y libclang-dev
COPY Gemfile /app
RUN bundle install
CMD echo 'Hello, world!'

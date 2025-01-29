FROM ruby:3.4-rc
WORKDIR /app

# Install the requirements we need to build the native Rust extensions
RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install -y libclang-dev

# Package and install the gem
COPY . /app
RUN gem build tzf.gemspec
RUN gem install tzf-*.gem

# Run a sanity check
WORKDIR /app/docker
RUN bundle install
CMD ["ruby", "sanity_check.rb"]

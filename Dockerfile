FROM ruby:2-alpine
RUN apk upgrade --no-cache \
    && apk add --no-cache --virtual build-dependencies build-base
WORKDIR /usr/src/app
COPY Gemfile /usr/src/app
RUN bundle config path vendor/bundle && \
    bundle config set --local without 'documentation' && \
    bundle install

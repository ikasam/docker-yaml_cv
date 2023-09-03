FROM ruby:2-alpine
RUN apk upgrade --no-cache \
    && apk add --no-cache git --virtual build-dependencies build-base
WORKDIR /usr/src/app
COPY ./yaml_cv/Gemfile ./yaml_cv/Gemfile.lock /usr/src/app/
RUN bundle install

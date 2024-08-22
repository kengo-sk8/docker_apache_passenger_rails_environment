ARG RUBY_VERSION=3.3.0
FROM ruby:${RUBY_VERSION}-slim-bookworm

ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    nodejs \
    vim \
    libpq-dev \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

WORKDIR /web2
COPY Gemfile /web2/Gemfile
COPY Gemfile.lock /web2/Gemfile.lock
RUN bundle install

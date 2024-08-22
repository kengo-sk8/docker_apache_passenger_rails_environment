ARG RUBY_VERSION=3.3.0
FROM ruby:${RUBY_VERSION}-slim-bookworm

# タイムゾーン設定
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

RUN mkdir -p /backend/web1
WORKDIR /backend/web1

# パッケージインストール
RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    build-essential \
    nodejs \
    libpq-dev \
    apache2 \
    apache2-dev \
    ruby-dev \
    libcurl4-openssl-dev \
    libpcre3-dev \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

# apacheをセットアップする為に必要なファイル
COPY ./apache/sites-available /etc/apache2/sites-available
COPY ./apache/ports.conf /etc/apache2/ports.conf
COPY ./apache/conf-available/fqdn.conf /etc/apache2/conf-available/fqdn.conf
COPY ./apache/mods-available/passenger.conf /etc/apache2/mods-available/passenger.conf
COPY ./apache/mods-available/passenger.load /etc/apache2/mods-available/passenger.load
COPY ./apache/virtual_host_enabler.sh /backend

# railsのセットアップ
COPY ./backend/web1/Gemfile /backend/web1/Gemfile
COPY ./backend/web1/Gemfile.lock /backend/web1/Gemfile.lock
COPY ./backend/web1 /backend/web1

# .htaccessのファイルをコピー
# COPY ./apache/.htaccess /backend/web1/public/.htaccess

# passengerとapache関連
RUN gem install passenger
RUN passenger-install-apache2-module

# railsのセットアップ
RUN bundle install
# .htaccessを有効化
RUN a2enmod rewrite
# .htaccessに記述したheader要素の有効化
RUN a2enmod headers
# passenger.loadファイルを有効化
RUN a2enmod passenger
# proxyモジュールを有効化
RUN a2enmod proxy_http
# fqdnモジュールを有効化
RUN a2enconf fqdn

RUN a2dissite 000-default \
    && sh /backend/virtual_host_enabler.sh

# apacheリスタート
RUN service apache2 restart
CMD ["apachectl", "-D", "FOREGROUND"]

FROM alpine:3.7

RUN mkdir /www

RUN mkdir -p /run/php

RUN apk update
RUN apk upgrade
RUN apk add bash php7-fpm php7-cli php7-phar php7-tokenizer php7-simplexml
RUN apk add --update curl openssl
RUN apk add --update nodejs nodejs-npm
RUN npm install -g eslint

COPY ./phpcs.phar /usr/local/bin

WORKDIR /www

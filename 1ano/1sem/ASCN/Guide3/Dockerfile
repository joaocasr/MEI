FROM ubuntu:20.04

# env variables if user wants to migrate and seed db
ENV MIGRATE false
ENV SEED false

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt install -y php7.4
RUN apt-get install -y php7.4
RUN apt-get install -y php7.4-zip
RUN apt-get install -y php7.4-mbstring
RUN apt-get install -y php7.4-tokenizer
RUN apt-get install -y php7.4-mysql
RUN apt-get install -y php7.4-gd
RUN apt-get install -y php7.4-xml
RUN apt-get install -y php7.4-bcmath
RUN apt-get install -y php7.4-intl
RUN apt-get install -y php7.4-curl
RUN apt install -y nodejs
RUN apt install -y npm
RUN apt install -y composer
RUN git clone https://github.com/Hackathonners/swap
WORKDIR /swap

RUN cp .env.example .env
RUN composer install
RUN npm install
RUN php artisan key:generate

COPY ./migsed.sh .
RUN chmod +x migsed.sh
EXPOSE 8000

CMD ./migsed.sh

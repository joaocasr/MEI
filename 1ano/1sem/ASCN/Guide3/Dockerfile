FROM ubuntu:20.04
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
#COPY ~/migsed.sh ~/swap/
WORKDIR swap/
RUN composer install
RUN npm install
#RUN sed -i 's/^DB_HOST=.*/DB_HOST=172.18.0.2/g' .env.example
#RUN sed -i 's/^DB_DATABASE=.*/DB_DATABASE=swap/g' .env.example
#RUN sed -i 's/^DB_USERNAME=.*/DB_USERNAME=joao/g' .env.example
#RUN sed -i 's/^DB_PASSWORD=.*/DB_PASSWORD=joao/g' .env.example
RUN cp .env.example .env
ENV DB_HOST=default
ENV DB_DATABASE=default
ENV DB_USERNAME=default 
ENV DB_PASSWORD=default 
RUN php artisan key:generate
#CMD ["chmod","+x","migsed.sh"]
CMD ["php", "artisan","serve","--host=0.0.0.0"]
EXPOSE 8000
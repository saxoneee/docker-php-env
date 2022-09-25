FROM ubuntu:20.04
LABEL maintainer="hendrik.sachse@gmail.com"

RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php -y
RUN apt-get install -y \ 
    apache2 \
    php7.4

EXPOSE 80 
EXPOSE 443

COPY "./entrypoint.sh" "/home"
ENTRYPOINT [ "/home/entrypoint.sh" ]
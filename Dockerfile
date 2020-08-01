FROM ubuntu:16.04
LABEL maintainer='Aakash Container' \
      employer='Aakash Elango' 
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install wget -y
RUN apt-get install unzip -y


WORKDIR /tmp

RUN wget https://github.com/Aakash-Elango/demo-html/archive/master.zip

RUN unzip master.zip

RUN mv demo-html-master/* /var/www/html/

EXPOSE 80

CMD ["apachectl","-D","FOREGROUND"]

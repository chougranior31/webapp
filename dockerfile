FROM ubuntu

MAINTAINER med2106 (chougranior31@gmail.com)

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git

#ADD static-website-example/ /var/www/html/

EXPOSE 80

RUN rm -rf /var/www/html/*

RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/

CMD ["nginx", "-g", "daemon off;"
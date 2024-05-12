FROM httpd
RUN apt-get update -y && apt-get install wget && apt-get install unzip
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page295/handtime.zip
RUN unzip handtime.zip
RUN cp -r /usr/local/apache2/handtime-html/* /usr/local/apache2/htdocs/
WORKDIR /home/ubuntu
EXPOSE 80,443

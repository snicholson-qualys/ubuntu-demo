
# Use the official image as a parent image.
FROM httpd:2.4

COPY ./html/ /usr/local/apache2/htdocs/
RUN apt -y update
RUN apt-get -y upgrade
RUN mkdir /var/www/html
RUN cd /var/www/html

RUN echo "<!DOCTYPE html> \
<html lang="en"> \
<head> \
    <meta charset="UTF-8"> \
    <title>I build secure images</title> \
</head> \
<body> \
    <h1>Learn Docker With Us</h1>   \
</body> \
</html>" > /var/www/html/index.html

EXPOSE 80

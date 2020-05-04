
# Use the official image as a parent image.
FROM ubuntu:1604

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y httpd
COPY ./public-html/ /usr/local/apache2/htdocs/
RUN systemctl start httpd
RUN systemctl enable httpd
RUN usermod -a -G apache ec2-user
RUN chown -R ec2-user:apache /var/www
RUN chmod 2775 /var/www
RUN find /var/www -type d -exec chmod 2775 {} \;
RUN find /var/www -type f -exec chmod 0664 {} \;
RUN echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php

EXPOSE 80

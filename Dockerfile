
# Use the official image as a parent image.
FROM httpd:2.4

RUN apt -y update
RUN apt-get -y upgrade

RUN echo "<!DOCTYPE html> \
<html lang="en"> \
<head> \
    <meta charset="UTF-8"> \
    <title>I build secure images</title> \
</head> \
<body> \
    <h1>Learn Docker With Us</h1>   \
    <h2>Scan with Qualys</h2>    \
</body> \
</html>" > /usr/local/apache2/htdocs/index.html

EXPOSE 80
EXPOSE 443

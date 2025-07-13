FROM   apache2:latest
RUN    apt-get update && \
       apt-get install -y apache2 && \
       sed -i 's/Listen 80/8080/g' /etc/apache2/ports.conf
COPY   index.html /var/www/html/
EXPOSE 8080
CMD    ["apachectl", "-D", "FOREGROUND"]

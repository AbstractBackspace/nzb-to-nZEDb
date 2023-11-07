FROM nimmis/apache-php7

# Update system
RUN apt update && apt upgrade -y && apt dist-upgrade -y

# Configure startup script that maps env variables to files
COPY env.sh /env.sh
RUN sed -i -e '$i \/env.sh\n' /etc/rc.local

# Copy web app
COPY --chown=www-data:www-data www/ /var/www

# Copy apache config
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Enable 'rewrite' module in the Apache web server
RUN a2enmod rewrite

# Expose web ports
EXPOSE 80
EXPOSE 443
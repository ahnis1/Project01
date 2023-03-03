FROM php:7.4-apache

# Set working directory for the application
WORKDIR /var/www/html/

# Copy the application files to the working directory
COPY . .

# Install required packages
RUN apt-get update && \
    apt-get install -y git && \
    docker-php-ext-install pdo_mysql

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache web server on container startup
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

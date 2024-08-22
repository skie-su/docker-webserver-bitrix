FROM phpmyadmin:latest

# Переменные сборки (установлены дефолтные значения)
ARG SERVER_USER=www-data
ARG SERVER_USER_UID=1001
ARG SERVER_GROUP=www-data
ARG SERVER_GROUP_UID=1001

# Конфигурация Apache образа
RUN a2dismod --force autoindex
RUN a2enmod rewrite

RUN usermod -u ${SERVER_USER_UID} ${SERVER_USER}
RUN groupmod -g ${SERVER_GROUP_UID} ${SERVER_GROUP}
RUN chown ${SERVER_USER}:${SERVER_GROUP} /var/www -R
RUN chmod 777 /var/log/apache2 -R

WORKDIR /var/www
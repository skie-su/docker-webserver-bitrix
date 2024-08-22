FROM nginx:stable

# Переменные сборки (установлены дефолтные значения)
ARG SERVER_USER=www-data
ARG SERVER_USER_UID=1001
ARG SERVER_GROUP=www-data
ARG SERVER_GROUP_UID=1001

# Конфигурация NGINX
RUN rm /etc/nginx/conf.d/default.conf
COPY ./src/classic/nginx/conf.d/bitrix.conf /etc/nginx/conf.d/bitrix.conf
COPY ./src/classic/nginx/conf.d/bitrix_block.conf /etc/nginx/conf.d/bitrix_block.conf
COPY ./src/classic/nginx/conf.d/bitrix_general.conf /etc/nginx/conf.d/bitrix_general.conf
COPY ./src/classic/nginx/conf.d/bx_temp.conf /etc/nginx/conf.d/bx_temp.conf
COPY ./src/classic/nginx/conf.d/errors.conf /etc/nginx/conf.d/errors.conf
COPY ./src/classic/nginx/conf.d/http-add_header.conf /etc/nginx/conf.d/http-add_header.conf
COPY ./src/classic/nginx/conf.d/im_subscrider.conf /etc/nginx/conf.d/im_subscrider.conf
COPY ./src/classic/nginx/conf.d/maps.conf /etc/nginx/conf.d/maps.conf
COPY ./src/classic/nginx/conf.d/maps-composite_settings.conf /etc/nginx/conf.d/maps-composite_settings.conf
COPY ./src/classic/nginx/conf.d/upstreams.conf /etc/nginx/conf.d/upstreams.conf

# Конфигурация NGINX образа
RUN mkdir /var/www
RUN usermod -u ${SERVER_USER_UID} ${SERVER_USER}
RUN groupmod -g ${SERVER_GROUP_UID} ${SERVER_GROUP}
RUN chown ${SERVER_USER}:${SERVER_GROUP} /var/www -R

RUN chmod 777 /var/log/nginx -R

WORKDIR /var/www

CMD ["nginx", "-g", "daemon off;"]
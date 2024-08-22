FROM redis:bookworm

# Конфигурация Redis образа
RUN mkdir "/var/log/redis"
RUN chmod 777 /var/log/redis/
RUN touch /var/log/redis/redis-server.log
RUN chmod 777 /var/log/redis/redis-server.log

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
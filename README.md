# docker-webserver-bitrix
Docker WEB-сервер для Bitrix (dWSB) ``без push-server - временно``. 
dWSB - это готовый набор Dockerfile для быстрого развертывания dev сервера для Bitrix.
dWSB работает в 3-х вариантах:
- Classic - классический вариант (apache, nginx, php, mariadb, redis).
Настроен сервер согласно [официальной инструкции](https://dev.1c-bitrix.ru/learning/course/index.php?COURSE_ID=32&CHAPTER_ID=05360&LESSON_PATH=3903.4862.20866.5360).
- FastCGI - вариант без apache (nginx, php, mariadb, redis).
Настройка через связь nginx с php через FastCGI.
- PHP-FPM - вариант без apache (nginx, php, mariadb, redis).
  Настройка через связь nginx с php через PHP-FPM.
\
\
Для новичков:
**Коротко о CGI, FastCGI, PHP-FPM и mod_php - [читать тут](https://tokmakov.msk.ru/blog/item/92).**
\
\
Настройки сборки и запуска Docker вынесены в Makefile + .env.
Подробнее о настройке и запуске Docker ниже.
\
\
**Все необходимые настройки (конфиги) пакетов вынесены в ``volumes``, 
что позволяет изменять настройки в любое время не пересоздавая образы Docker.**
\
Так же для удобства отладки в ``volumes`` вынесены log файлы.

## Образы
### Classic версия
- PHP+Apache ``(php:8.3-apache-bookworm)``
- nginx ``(nginx:stable)``
- SQL ``(mariadb:latest)``
- Redis ``(redis:bookworm)`` \
Дополнительно:
- phpMyAdmin ``(phpmyadmin:latest)``

### FastCGI / PHP-FPM версия (в разработке)
- PHP ``(php:8.3-fpm-bookworm)``
- nginx ``(nginx:stable)``
- SQL ``(mariadb:latest)``
- Redis ``(redis:bookworm)`` \
  Дополнительно:
- phpMyAdmin ``(phpmyadmin:latest)``

## Установка
### Требования
- ОС: Linux
- Docker 25.0
- Docker Compose 2.26

### Загрузка

### Настройка

### Запуск


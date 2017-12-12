FROM themoroccan09/phpfpm-for-laravel
MAINTAINER <themoroccan09@github>

ENV APP=api
RUN mkdir $APP

RUN composer create-project laravel/laravel api --prefer-dist
RUN chown -R :www-data api
RUN chmod -R 775 $APP/storage $APP/bootstrap/cache

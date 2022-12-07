ARG BUILD_FROM
FROM $BUILD_FROM

# Установка зависимостей для дополнения
RUN \
    apk add --no-cache \
        python3

WORKDIR /data

# Копирование данных для дополнения
COPY run.sh /
RUN chmod a+x /run.sh

CMD ["/run.sh"]

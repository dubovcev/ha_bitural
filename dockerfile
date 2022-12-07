ARG BUILD_FROM
FROM $BUILD_FROM

# Копирование данных для дополнения
COPY run.sh /
RUN chmod a+x /run.sh

CMD ["/run.sh"]

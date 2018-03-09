FROM python:alpine3.6

RUN apk -U add ca-certificates build-base git && \
    pip install locustio && \
    rm -r /var/cache/apk/* && \
    mkdir /app

WORKDIR /app

ADD docker-entrypoint.sh /app

EXPOSE 8089 5557 5558
ENTRYPOINT [ "/app/docker-entrypoint.sh" ]

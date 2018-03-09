FROM python:alpine3.6

RUN apk -U add ca-certificates build-base && \
    pip install locustio && \
    rm -r /var/cache/apk/* && \
    mkdir /app

WORKDIR /app

ONBUILD ADD . /app

EXPOSE 8089 5557 5558
ENTRYPOINT [ "locust" ]

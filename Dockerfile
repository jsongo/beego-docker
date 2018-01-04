FROM golang:alpine
LABEL maintainer="jsongo@qq.com"

RUN apk add --no-cache git \
    && go get github.com/astaxie/beego \
    && go get github.com/beego/bee \
    && apk del git

VOLUME /code
WORKDIR /code
ENTRYPOINT bee run

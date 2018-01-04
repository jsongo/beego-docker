FROM golang:alpine
LABEL maintainer="jsongo@qq.com"

ENV GOPATH /go
WORKDIR /go/src

RUN apk add --no-cache git \
    && go get github.com/astaxie/beego \
    && go get github.com/beego/bee \
    && apk del git

ONBUILD COPY . /go/src/main
ONBUILD ENTRYPOINT ["bee", "run", "main"]

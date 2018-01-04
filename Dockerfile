FROM golang:alpine
LABEL maintainer="jsongo@qq.com"

RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee

ONBUILD COPY main /usr/bin/
ONBUILD ENTRYPOINT /usr/bin/main

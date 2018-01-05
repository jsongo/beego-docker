FROM golang:alpine
LABEL maintainer="jsongo@qq.com"

VOLUME [ "/go/src" ]
ENV GOPATH /go
WORKDIR /go/src

# RUN apk add --no-cache git \
#     && go get github.com/astaxie/beego \
#     && go get github.com/beego/bee \
#     && apk del git

COPY entrypoint.sh /
ONBUILD COPY . /go/src/main
ONBUILD CMD ["ash", "/entrypoint.sh"]

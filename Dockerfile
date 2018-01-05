FROM golang:alpine
LABEL maintainer="jsongo@qq.com"

VOLUME [ "/go/src" ]
ENV GOPATH /go
WORKDIR /go/src

COPY glide.yaml /
RUN apk add --no-cache git \
    && go get github.com/beego/bee \
    && go get github.com/Masterminds/glide
RUN glide --yaml /glide.yaml install
    # && apk del git

COPY entrypoint.sh /
ONBUILD COPY . /go/src/main
ONBUILD CMD ["ash", "/entrypoint.sh"]

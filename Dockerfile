FROM golang:1.17-alpine as BUILD

WORKDIR /go/src/code.test.com/testgo

COPY . .

RUN apk update && apk add make && make build && cp ./bin/testgo /tmp

FROM alpine:3.15

COPY --from=BUILD  /tmp/testgo  /usr/bin/testgo

CMD ["testgo"]
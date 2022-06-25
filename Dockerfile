FROM golang:1.16-alpine

RUN apk add build-base

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN go mod download

RUN go build -o go-fiber-crm .

EXPOSE 3000

CMD ["/app/go-fiber-crm"]
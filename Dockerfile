FROM golang:1.16-alpine

WORKDIR /app 

COPY go.mod ./
COPY go.sum ./

RUN go mod download
RUN go mod tidy

COPY *.go ./

RUN go build -o go-fiber .

EXPOSE 3000

CMD [ "/app/go-fiber" ]
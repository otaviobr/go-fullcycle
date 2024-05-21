FROM golang:1.21-alpine3.18

WORKDIR /usr/src/app

COPY . .

RUN go build app.go
RUN chmod +x app

CMD ["./app"]
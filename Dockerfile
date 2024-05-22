FROM golang:1.21-alpine3.18 as builder

WORKDIR /usr/src/app

COPY . .

RUN mkdir tmp
RUN go build app.go
RUN chmod +x app
RUN mv app /tmp

FROM scratch
COPY --from=builder ./tmp/app .

CMD ["./app"]

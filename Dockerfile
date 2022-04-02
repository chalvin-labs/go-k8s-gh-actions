FROM golang:1.18-alpine

WORKDIR /app

COPY . .

RUN apk add git
RUN go build -o pipeline-example-backend 

EXPOSE 80

CMD ./pipeline-example-backend
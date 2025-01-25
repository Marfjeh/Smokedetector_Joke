FROM golang:1.23-alpine
LABEL authors="Marf"
WORKDIR /src
COPY go.mod ./
COPY *.go ./
RUN go build -o /smoke
CMD ["/smoke"]
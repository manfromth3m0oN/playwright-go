FROM debian:bookworm

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y golang ca-certificates
RUN go run github.com/playwright-community/playwright-go/cmd/playwright@v0.4102.0v0.4101.1v0.4101.1v0.4101.1 install --with-deps

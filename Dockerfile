FROM debian:bookworm

ARG PW_VER=latest

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y golang ca-certificates
RUN go run github.com/playwright-community/playwright-go/cmd/playwright@$PW_VER install --with-deps

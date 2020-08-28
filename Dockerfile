
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y --no-install-recommends build-essential git ca-certificates

RUN git clone http://github.com/seburath/.dotfiles

WORKDIR .dotfiles

RUN make ubuntu

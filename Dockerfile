FROM debian:latest

RUN apt update
RUN apt-get -y install unzip wget

ARG GUNBOT_VERSION=1839
ENV GUNBOT_VERSION ${GUNBOT_VERSION}

RUN mkdir -p /app
WORKDIR /app

COPY install.sh .

RUN ./install.sh

WORKDIR /app/gunbot

VOLUME /app/gunbot/

CMD ./gunthy-arm

EXPOSE 5000

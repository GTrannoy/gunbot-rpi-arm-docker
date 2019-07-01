FROM alpine:latest

RUN apk update && apk add -y unzip wget

ARG GUNBOT_VERSION=1291
ENV GUNBOT_VERSION ${GUNBOT_VERSION}

RUN mkdir -p /app
WORKDIR /app

COPY install.sh .

RUN ./install.sh

WORKDIR /app/gunbot

VOLUME /app/gunbot/

CMD ./gunthy-arm

EXPOSE 5000

FROM node:8.15.0-alpine
MAINTAINER Michael Ben-Nes <miki@epoch.co.il>

ENV UPDATED 20190116-01

EXPOSE 9000

RUN \
    apk update && \
    apk add git sqlite alpine-sdk && \
    cd /srv && \
    git clone https://github.com/mbn18/background-geolocation-console.git && \
    cd background-geolocation-console && \
    git checkout dbRelocate && \
    npm i && \
    apk del git alpine-sdk

WORKDIR /srv/background-geolocation-console

CMD ["npm", "run", "server"]
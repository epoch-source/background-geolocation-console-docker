FROM node:8.15.0-alpine
MAINTAINER Michael Ben-Nes <miki@epoch.co.il>

ENV UPDATED 20190115-01

RUN \
    apk update && \
    apk add git sqlite alpine-sdk && \
    cd /srv && \
    git clone https://github.com/transistorsoft/background-geolocation-console.git && \
    cd background-geolocation-console && \
    npm i && \
    sed -i "s/process.env.GOOGLE_MAPS_API_KEY/'AIzaSyCgpLpM5pMm0wGvF_44mtUJyeWNlZWRQhU'/g" webpack.config.babel.js && \
    apk del git alpine-sdk

WORKDIR /srv/background-geolocation-console

CMD ["npm", "run", "server"]
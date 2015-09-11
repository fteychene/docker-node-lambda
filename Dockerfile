FROM node:latest
MAINTAINER Francois Teychene <francois.teychene@gmail.com>

# node-lambda need rsync & zip to deploy
RUN apt-get update \
    && apt-get install -y --no-install-recommends && apt-get -y install \
    rsync \
    zip \
    && rm -rf /var/lib/apt/lists/*

# install node-lambda
RUN npm install -g node-lambda

WORKDIR /project

ENTRYPOINT ["node-lambda"]

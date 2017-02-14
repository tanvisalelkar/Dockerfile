FROM ubuntu:latest
MAINTAINER Tanvi

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g http-server

ADD index.html /usr/apps/docker-http/index.html
WORKDIR /usr/apps/docker-http/

CMD ["http-server", "-s"]

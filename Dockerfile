FROM ubuntu:artful

RUN apt-get update
RUN apt-get install -y wget

RUN wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh

RUN useradd -m heroku 

WORKDIR /home/heroku
USER heroku
RUN mkdir app
WORKDIR /home/heroku/app

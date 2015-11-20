FROM ubuntu:14.04
MAINTAINER Lee Goolsbee "lee@edgecase.io"

# Update packages
RUN apt-get update -y && apt-get upgrade -y

# Install some packages we need
RUN apt-get install -y git curl python python-pip

# Install Node.JS
RUN cd /usr/local && curl http://nodejs.org/dist/v0.10.40/node-v0.10.40-linux-x64.tar.gz | tar --strip-components=1 -zxf- && cd
RUN npm -g update npm

# Install AWS CLI
RUN pip install awscli awsebcli

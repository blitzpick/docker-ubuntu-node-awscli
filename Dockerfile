FROM ubuntu:16.04
MAINTAINER Erik Mikkelson "Erik.Mikkelson@blitzpick.co"

ENV DEBIAN_FRONTEND=noninteractive

# Update packages
RUN apt-get update -y && apt-get upgrade -y

# Install some packages we need
RUN apt-get install -y build-essential git curl python

# Install latest version of pip
RUN curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py

# Install Node.JS
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - && apt-get install -y nodejs

# Install AWS CLI
RUN pip install awscli awsebcli

# Make sure we land in a shell
CMD ["/bin/bash"]

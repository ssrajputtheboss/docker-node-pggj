FROM node:alpine
LABEL maintainer="shashank2019@iiitkottayam.ac.in"
LABEL description="An alpine based docker image for node,gcc,g++,jdk and python3"
WORKDIR /usr/src/app
RUN apk add --update --no-cache python3 gcc g++ openjdk8
ENV JAVA_HOME=/usr/lib/jvm/default-jvm \
    PATH="/usr/lib/jvm/default-jvm/bin:$PATH"
RUN "node"
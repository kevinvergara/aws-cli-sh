FROM node:12-alpine

WORKDIR /app

RUN apk update && apk upgrade && apk add unzip vim

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

CMD tail -f /dev/null

FROM ubuntu:latest

WORKDIR /app

RUN apt update && apt upgrade -y && apt install unzip vim curl s3fs -y

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

CMD tail -f /dev/null

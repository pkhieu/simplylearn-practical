FROM ubuntu:latest

# Proxy Args
ARG HTTP_PROXY_HOST
ARG HTTP_PROXY_PORT
ARG HTTP_PROXY=http://${HTTP_PROXY_HOST}:${HTTP_PROXY_PORT}
ARG NO_PROXY

ENV http_proxy=${HTTP_PROXY}
ENV https_proxy=${HTTP_PROXY}
ENV http_proxy_host=${HTTP_PROXY_HOST}
ENV http_proxy_port=${HTTP_PROXY_PORT}
ENV no_proxy=${NO_PROXY}


RUN apt update && apt upgrade -y
RUN apt install nodejs -y
RUN node -v

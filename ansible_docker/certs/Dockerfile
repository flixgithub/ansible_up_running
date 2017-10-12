FROM ubuntu:trusty
MAINTAINER Bryan.Liu
ENV http_proxy http://hubproxy.sh.cn.ao.ericsson.se:8080/
ENV https_proxy http://hubproxy.sh.cn.ao.ericsson.se:8080/
RUN export http_proxy=$http_proxy
RUN export https_proxy=$https_proxy

RUN apt-get update
RUN apt-get install -y openssl
RUN mkdir /certs
WORKDIR /certs
RUN openssl req -new -x509 -nodes -out nginx.crt -keyout nginx.key -subj '/CN=localhost' -days 3650
VOLUME /certs

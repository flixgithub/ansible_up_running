FROM nginx:1.7

ENV http_proxy http://hubproxy.sh.cn.ao.ericsson.se:8080/
ENV https_proxy http://hubproxy.sh.cn.ao.ericsson.se:8080/
RUN export http_proxy=$http_proxy
RUN export https_proxy=$https_proxy

RUN rm /etc/nginx/conf.d/default.conf \
       /etc/nginx/conf.d/example_ssl.conf
COPY nginx.conf /etc/nginx/conf.d/mezzanine.conf

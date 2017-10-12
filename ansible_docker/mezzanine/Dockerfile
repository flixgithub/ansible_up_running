FROM ansible/ubuntu14.04-ansible:stable
MAINTAINER Bryan.Liu

ENV http_proxy http://hubproxy.sh.cn.ao.ericsson.se:8080/
ENV https_proxy http://hubproxy.sh.cn.ao.ericsson.se:8080/
RUN export http_proxy=$http_proxy
RUN export https_proxy=$https_proxy

ADD ansible /srv/ansible
WORKDIR /srv/ansible
RUN ansible-playbook mezzanine-container.yml -c local
VOLUME /srv/project/static
WORKDIR /srv/project
EXPOSE 8000
CMD ["gunicorn_django","-c","gunicorn.conf.py"]


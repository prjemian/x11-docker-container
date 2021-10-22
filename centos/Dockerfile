FROM centos:latest

# derived from https://nelkinda.com/blog/xeyes-in-docker/

RUN yum install -y epel-release dnf dnf-plugins-core
RUN yum config-manager --set-enabled powertools
RUN yum --enablerepo=powertools list xorg-x11-apps
RUN yum -y install xeyes
RUN rm -rf /tmp/* /usr/share/doc/* /usr/share/info/* /var/tmp/*
RUN useradd -ms /bin/bash user
ENV DISPLAY :0

USER user
ENTRYPOINT ["/bin/sh", "-c", "$0 \"$@\"", "xeyes"]

# docker build -t my-xeyes .

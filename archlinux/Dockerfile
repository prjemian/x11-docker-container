FROM archlinux:latest

# derived from https://nelkinda.com/blog/xeyes-in-docker/

RUN pacman -Syu --noconfirm xorg-xeyes

RUN rm -rf /tmp/* /usr/share/doc/* /usr/share/info/* /var/tmp/*
RUN useradd -ms /bin/bash user
ENV DISPLAY :0

USER user
ENTRYPOINT ["/bin/sh", "-c", "$0 \"$@\"", "xeyes"]

# docker build -t my-xeyes .

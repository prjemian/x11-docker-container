FROM alpine:latest

# derived from https://nelkinda.com/blog/xeyes-in-docker/
 
RUN apk update && apk add xeyes
RUN rm -rf /tmp/* /usr/share/doc/* /usr/share/info/* /var/tmp/*

# advice: https://wiki.alpinelinux.org/wiki/Setting_up_a_new_user#adduser
# RUN adduser -s /bin/bash user
RUN adduser -D --shell /bin/bash user
RUN chpasswd $(echo "trivialdockerpassword")

ENV DISPLAY :0
 
USER user
ENTRYPOINT ["/bin/sh", "-c", "$0 \"$@\"", "xeyes"]

# docker build -t my-xeyes .

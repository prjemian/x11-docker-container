FROM debian:latest

# from https://nelkinda.com/blog/xeyes-in-docker/
 
RUN apt-get update && apt-get install -y x11-apps
RUN rm -rf /tmp/* /usr/share/doc/* /usr/share/info/* /var/tmp/*
RUN useradd -ms /bin/bash user
ENV DISPLAY :0
 
USER user
ENTRYPOINT ["/bin/sh", "-c", "$0 \"$@\"", "xeyes"]

# docker build -t my-xeyes .

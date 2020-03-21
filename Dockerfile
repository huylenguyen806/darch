FROM archlinux:latest

WORKDIR /root

# Setup
COPY resources /root/resources
RUN bash /root/resources/install.sh

USER root
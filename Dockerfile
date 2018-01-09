FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
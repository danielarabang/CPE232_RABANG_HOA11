FROM ubuntu
MAINTAINER daniela <qdmdrabang@tip.edu.ph>

#Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

#Update packages
RUN apt update; apt dist-upgrade -y

#Install packages 
RUN apt install -y apache2 mariadb-server

#Set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND

FROM ubuntu       
MAINTAINER daniela <qdmdrabang@tip.edu.ph>

#Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

#Update packages
RUN apt-get update -y
RUN apt-get upgrade -y

#Install packages
RUN apt-get install apache2 -y
RUN apt-get install php libapache2-mod-php -y
RUN apt-get install mariadb-server mariadb-client -y

#Run packages
RUN /etc/init.d/apache2 start

#Set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND

FROM centos
# Install web server
RUN yum -y update && yum -y install httpd

# Install DB server

# Add relevant instructions for your database server

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

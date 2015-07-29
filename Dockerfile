FROM debian
MAINTAINER Zoar

#apt update & Install wget and tilecache.
RUN echo "deb http://ftp.jp.debian.org/debian/ jessie main"> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install wget tilecache -y

#Install easy_install, pip and Paste.
RUN cd /tmp
RUN wget https://bootstrap.pypa.io/ez_setup.py -O - | python
RUN easy_install pip
RUN pip install Paste

EXPOSE 8080
CMD tilecache_http_server

#/tmp/tilecache
#/etc/tilecache.cfg
#docker build --no-cache -t tilecache .
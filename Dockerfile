FROM debian
MAINTAINER Zoar

#apt update & Install wget and tilecache.
RUN echo "deb http://ftp.jp.debian.org/debian/ jessie main"> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install busybox tilecache -y

#Install easy_install, pip and Paste.
RUN cd /tmp
ADD wget https://bootstrap.pypa.io/ez_setup.py /tmp/ez_setup.py
RUN python /tmp/ez_setup.py
RUN easy_install pip
RUN pip install Paste

EXPOSE 8080
CMD tilecache_http_server

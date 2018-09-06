#
# netcutter-web web service docker requires
#    + debian:jessie or ubuntu:16.04
#    + python 2.7
#    + django
#
# Build this docker with:
#   docker build -t netcutterweb.docker -f=./Dockerfile .
#
# Run this docker with:
#	docker run -d --net=host netcutterweb.docker
#
#   the container works as a web service, thus results are retrieved as
#   web pages and downloadable links.
#
FROM ubuntu:16.04

MAINTAINER Sergio Castillo-Lara, s.cast.lara@gmail.com

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    	git \
    	python2.7 \
    	python2.7-dev \
    	python-pip \
		python-tk \
		uwsgi \
		uwsgi-plugin-python;

RUN pip install django==1.4.22;
RUN pip install py2neo==4.0.0;
RUN pip install matplotlib;
RUN pip install uwsgi;

RUN echo "RUNNING 3.0"
RUN git clone https://github.com/scastlara/netcutter-web.git;
RUN dir;
WORKDIR /netcutter-web



ENV NETCUTTER_PORT 8000
EXPOSE 8000
CMD ["sh",  "-c", "uwsgi --http-socket :${NETCUTTER_PORT} --static-map /static=/netcutter-web/static/ --module netcutter-web.wsgi:application"]
FROM ubuntu:xenial
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
WORKDIR /distribution-form

ADD . /distribution-form

RUN \ 
	/distribution-form/installInsideDocker.sh; 

EXPOSE 80 443

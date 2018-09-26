FROM ubuntu:16.04

LABEL maintainer="corban@utos.org"

RUN apt-get update \
	&& apt-get install bluez -y 

WORKDIR /scripts

COPY docker-entrypoint.sh /scripts/docker-entrypoint.sh

CMD ["./docker-entrypoint.sh"]

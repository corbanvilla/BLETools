FROM ubuntu:16.04

LABEL maintainer="corban@utos.org"

WORKDIR /gattacker

RUN apt-get update \
	&& apt-get install -y \
	bluetooth bluez libbluetooth-dev libudev-dev curl make gcc build-essential libglib2.0-dev \
	&& curl -sL https://deb.nodesource.com/setup_8.x | bash - \
	&& apt-get install -y nodejs \
	&& npm install noble \
	&& npm install bleno \
	&& npm install gattacker

COPY config.env /gattacker/node_modules/gattacker
COPY docker-entrypoint.sh .

CMD ["./docker-entrypoint.sh"]

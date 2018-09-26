FROM alpine

LABEL maintainer="corban@utos.org"

RUN apk add bluez-deprecated

WORKDIR /scripts

COPY docker-entrypoint.sh /scripts/docker-entrypoint.sh

CMD ["./docker-entrypoint.sh"]

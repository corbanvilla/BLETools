FROM ubuntu:18.04

LABEL maintain="corban@utos.org"

COPY ./blue_hydra /blue_hydra
COPY ./bluez_examples /usr/share/doc/bluez-test-scripts/examples 
COPY ./blue_hydra.yml /blue_hydra
COPY ./entrypoint.sh /entrypoint.sh
COPY ./nice-entrypoint.sh /nice-entrypoint.sh

WORKDIR /blue_hydra

RUN apt-get update && \
    apt-get install -y bluez bluez-test-scripts python-bluez python-dbus libsqlite3-dev ubertooth ruby-dev bundler bluetooth && \
    bundle install
RUN chmod +x /entrypoint.sh && chmod +x /nice-entrypoint.sh
    
CMD /entrypoint.sh

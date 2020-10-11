FROM ghcr.io/chendo/platformio:latest

USER root # Docker Github actions must be run as root

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
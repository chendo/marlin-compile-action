FROM ghcr.io/chendo/platformio@sha256:4af5d77e0603b7a54077b7891a82ad78215d26c2ea69f7bdd6ddd9d061ffb70a

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
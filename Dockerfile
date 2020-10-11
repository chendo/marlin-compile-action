FROM ubuntu:20.04

ENV PLATFORMIO_VERSION="5.0.1"
RUN apt-get update -qq && apt-get install -qq -y --no-install-recommends wget unzip git make nano xz-utils gcc python3 curl python3-pip python3-dev build-essential \
 && python3 -m pip install --upgrade pip setuptools \
 && pip install -U platformio==${PLATFORMIO_VERSION} \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN platformio settings set enable_telemetry false \
  && platformio settings set check_platformio_interval 365 \
  && platformio settings set check_libraries_interval 365 \
  && platformio settings set check_platforms_interval 365
  
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
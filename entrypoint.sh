#!/bin/bash

set -e

cd $GITHUB_WORKSPACE

export

if [ -n "$INPUT_CONFIGURATION_URL" ]; then
  curl "$INPUT_CONFIGURATION_URL" -L > Marlin/Configuration.h
fi

if [ -n "$INPUT_CONFIGURATION_ADV_URL" ]; then
  curl "$INPUT_CONFIGURATION_ADV_URL" -L > Marlin/Configuration_adv.h
fi

platformio run $INPUT_PLATFORMIO_ARGS

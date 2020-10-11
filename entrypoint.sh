#!/bin/bash

set -e

cd $GITHUB_WORKSPACE

export

platformio run $(INPUT_PLATFORMIO_ARGS)

#!/bin/bash

set -e

cd $GITHUB_WORKSPACE

export

platformio run

find .pio/build/*.{bin,hex,elf}
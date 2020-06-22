#!/bin/bash

###################################################################
# stm32 minimal example write_bin.sh
# openocd commands to program the micro, invoked in the Makefile
###################################################################
OPENOCD_CFG=$1
BIN_IMAGE=$2

killall -s 9 openocd
echo "Hello"
openocd -f ${OPENOCD_CFG} -c "program ${BIN_IMAGE} verify reset exit"
# -c "reset init" -c "flash write_image ${BIN_IMAGE}" -c  "verify_image ${BIN_IMAGE}" -c reset -c run

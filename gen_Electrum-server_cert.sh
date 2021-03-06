#!/bin/bash
dev="-dev"
COIN_SYM=${COIN_SYM:-mzc}
IMAGE=${IMAGE:-mazaclub/electrum-dash-server:${COIN_SYM}${dev}}
HOST_DATA_PREFIX=${HOST_DATA_PREFIX:-/opt/tmp/mercury/${COIN_SYM}/mercury-disk/}


docker run -it --rm \
  --name mercury_gencert \
  -e COIN=${COIN} \
  -e COIN_SYM=${COIN_SYM} \
  -v ${HOST_DATA_PREFIX}/app/certs:/app/certs \
  ${IMAGE} /app/gen_cert.sh

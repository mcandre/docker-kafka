#!/bin/bash
set -euo pipefail

CONFIG="${KAFKA_HOME}/config/server.properties"

ZOOKEEPER="${DOCKERKAFKA_ZOOKEEPER_1_PORT_2181_TCP_ADDR}:${DOCKERKAFKA_ZOOKEEPER_1_PORT_2181_TCP_PORT}"

sed -i \
    -e "s/zookeeper.connect=.*/zookeeper.connect=${ZOOKEEPER}/" \
    -e "s/\(#\s*\)\{0,1\}advertised.host.name=.*/advertised.host.name=${KAFKA_ADVERTISED_HOST_NAME}/" \
    "$CONFIG"

kafka-server-start.sh "$CONFIG"

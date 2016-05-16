#!/bin/bash
sed -i.bak s/zookeeper.connect=localhost:2181/zookeeper.connect=$ZOOKEEPER_PORT_2181_TCP_ADDR:2181/g $KAFKA_HOME/config/server.properties

cd $KAFKA_HOME
bin/kafka-server-start.sh config/server.properties

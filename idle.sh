#!/bin/bash

/spark/spark-2.3.0-bin-hadoop2.7/sbin/start-history-server.sh


cleanup ()
{
  kill -s SIGTERM $!
  exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
  sleep 60 &
  wait $!
done

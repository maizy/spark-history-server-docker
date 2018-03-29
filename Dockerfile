FROM openjdk:8

RUN wget \
    http://apache-mirror.rbc.ru/pub/apache/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz \
    -q -O /tmp/spark.tgz

RUN mkdir /spark && tar xzf /tmp/spark.tgz -C /spark

ADD ./idle.sh /idle.sh
RUN chmod +x /idle.sh

ENV SPARK_HISTORY_OPTS -Dspark.history.fs.logDirectory=/logs

VOLUME /logs
EXPOSE 18080

ENTRYPOINT ["/idle.sh"]

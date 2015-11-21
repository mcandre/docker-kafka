FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka_2.9.2-0.8.2.0
ENV PATH $PATH:$KAFKA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD http://apache.mirrors.lucidnetworks.net/kafka/0.8.2.0/kafka_2.9.2-0.8.2.0.tgz /kafka_2.9.2-0.8.2.0.tgz
RUN tar xvf /kafka_2.9.2-0.8.2.0.tgz && \
    rm /kafka_2.9.2-0.8.2.0.tgz
ENTRYPOINT /start-kafka.sh

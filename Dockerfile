FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka_2.9.2-0.8.2.1
ENV PATH $PATH:$KAFKA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD http://apache.mirrors.lucidnetworks.net/kafka/0.8.2.1/kafka_2.9.2-0.8.2.1.tgz /kafka_2.9.2-0.8.2.1.tgz
RUN tar xvf /kafka_2.9.2-0.8.2.1.tgz && \
    rm /kafka_2.9.2-0.8.2.1.tgz
ENTRYPOINT /start-kafka.sh

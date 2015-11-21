FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka_2.9.1-0.8.2.2
ENV PATH $PATH:$KAFKA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD http://apache.mirrors.lucidnetworks.net/kafka/0.8.2.2/kafka_2.9.1-0.8.2.2.tgz /kafka_2.9.1-0.8.2.2.tgz
RUN tar xvf /kafka_2.9.1-0.8.2.2.tgz && \
    rm /kafka_2.9.1-0.8.2.2.tgz
ENTRYPOINT /start-kafka.sh

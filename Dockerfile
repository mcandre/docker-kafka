FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka_2.10-0.8.2-beta
ENV PATH $PATH:$KAFKA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD http://apache.mirrors.lucidnetworks.net/kafka/0.8.2-beta/kafka_2.10-0.8.2-beta.tgz /kafka_2.10-0.8.2-beta.tgz
RUN tar xvf /kafka_2.10-0.8.2-beta.tgz && \
    rm /kafka_2.10-0.8.2-beta.tgz
ENTRYPOINT /start-kafka.sh

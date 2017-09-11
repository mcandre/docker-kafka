FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka_2.11-0.8.2.2
ENV PATH $PATH:$KAFKA_HOME/bin
COPY start-kafka /start-kafka
RUN apt-get update && \
    apt-get install -y wget && \
    wget http://apache.mirrors.lucidnetworks.net/kafka/0.8.2.2/kafka_2.11-0.8.2.2.tgz && \
    tar xvf /kafka_2.11-0.8.2.2.tgz && \
    rm /kafka_2.11-0.8.2.2.tgz
ENTRYPOINT ["/start-kafka"]

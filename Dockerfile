FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka-0.7.0-incubating-src
ENV PATH $PATH:$KAFKA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD http://archive.apache.org/dist/kafka/old_releases/kafka-0.7.0-incubating/kafka-0.7.0-incubating-src.tar.gz /kafka-0.7.0-incubating-src.tar.gz
RUN tar xvf /kafka-0.7.0-incubating-src.tar.gz && \
    rm /kafka-0.7.0-incubating-src.tar.gz && \
    sh -c 'cd /kafka-0.7.0-incubating-src; ./sbt update package'
ENTRYPOINT /start-kafka.sh

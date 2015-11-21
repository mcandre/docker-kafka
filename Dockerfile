FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka-0.7.2-incubating-src
ENV PATH $PATH:$KAFKA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD http://archive.apache.org/dist/kafka/old_releases/kafka-0.7.2-incubating/kafka-0.7.2-incubating-src.tgz /kafka-0.7.2-incubating-src.tgz
RUN tar xvf /kafka-0.7.2-incubating-src.tgz && \
    rm /kafka-0.7.2-incubating-src.tgz && \
    sh -c 'cd /kafka-0.7.2-incubating-src; ./sbt update package'
ENTRYPOINT /start-kafka.sh

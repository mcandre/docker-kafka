FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka
ENV CLASSPATH /kafka/kafka-0.6.RC2.jar
ENV PATH $PATH:$KAFKA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD http://sna-projects.com/kafka/downloads/kafka-0.6.RC2.zip /kafka-0.6.RC2.zip
RUN unzip -d /kafka /kafka-0.6.RC2.zip && \
    rm /kafka-0.6.RC2.zip
ENTRYPOINT /start-kafka.sh

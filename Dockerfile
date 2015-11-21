FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka
ENV PATH $PATH:$KAFKA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD http://sna-projects.com/kafka/downloads/kafka-0.6.zip /kafka-0.6.zip
RUN unzip /kafka-0.6.zip && \
    rm /kafka-0.6.zip
ENTRYPOINT /start-kafka.sh

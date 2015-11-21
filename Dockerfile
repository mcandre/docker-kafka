FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka-0.6_rc1
ENV CLASSPATH /kafka-0.6_rc1/kafka-0.6.RC1.jar
ENV PATH $PATH:$KAFKA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD https://github.com/kafka-dev/kafka/archive/v0.6_rc1.zip /v0.6_rc1.zip
RUN unzip /v0.6_rc1.zip && \
    rm /v0.6_rc1.zip && \
    chmod a+x /kafka-0.6_rc1/bin/* && \
    sh -c 'cd /kafka-0.6_rc1; ./sbt update package'
ENTRYPOINT /start-kafka.sh

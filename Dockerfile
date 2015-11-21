FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV KAFKA_HOME /kafka-b6317198449fb9d02d51fb4dd32d1f4451955271
ENV PATH $PATH:$KAFKA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD https://github.com/kafka-dev/kafka/archive/b6317198449fb9d02d51fb4dd32d1f4451955271.zip /b6317198449fb9d02d51fb4dd32d1f4451955271.zip
RUN unzip /b6317198449fb9d02d51fb4dd32d1f4451955271.zip && \
    rm /b6317198449fb9d02d51fb4dd32d1f4451955271.zip && \
    chmod a+x /kafka-b6317198449fb9d02d51fb4dd32d1f4451955271/bin/* && \
    sh -c 'cd /kafka-b6317198449fb9d02d51fb4dd32d1f4451955271; ./sbt update package'
ENTRYPOINT /start-kafka.sh

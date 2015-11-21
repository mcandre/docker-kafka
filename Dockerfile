FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV SCALA_HOME /scala-2.8.0.final
ENV KAFKA_HOME /kafka-e5dc198b1ab44756ffb08d33a8698a005e857f37
ENV CLASSPATH /kafka-e5dc198b1ab44756ffb08d33a8698a005e857f37/dist/kafka-0.05.jar
ENV PATH $PATH:$KAFKA_HOME/bin:$SCALA_HOME/bin
ADD start-kafka.sh /start-kafka.sh
ADD https://github.com/kafka-dev/kafka/archive/e5dc198b1ab44756ffb08d33a8698a005e857f37.zip /e5dc198b1ab44756ffb08d33a8698a005e857f37.zip
ADD http://www.scala-lang.org/files/archive/scala-2.8.0.final.tgz /scala-2.8.0.final.tgz
RUN apt-get update && \
    apt-get install -y ant && \
    tar xvf /scala-2.8.0.final.tgz && \
    rm /scala-2.8.0.final.tgz && \
    unzip /e5dc198b1ab44756ffb08d33a8698a005e857f37.zip && \
    rm /e5dc198b1ab44756ffb08d33a8698a005e857f37.zip && \
    chmod a+x /kafka-e5dc198b1ab44756ffb08d33a8698a005e857f37/bin/* && \
    sh -c 'cd /kafka-e5dc198b1ab44756ffb08d33a8698a005e857f37; ant jar'
ENTRYPOINT /start-kafka.sh

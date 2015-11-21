# docker-kafka - a Docker container running a continuous Kafka broker node

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-kafka/

# EXAMPLE

Mac and Windows users can configure docker-compose with:

```
$ ln -sf docker-compose-docker-machine.yml.sample docker-compose.yml
```

Linux users can:

```
$ ln -sf docker-compose-linux-host.yml.sample docker-compose.yml
```

Then:

```
$ make
docker-compose rm -f && docker-compose up
No stopped containers
Creating dockerkafka_zookeeper_1...
Creating dockerkafka_kafka_1...
Attaching to dockerkafka_zookeeper_1, dockerkafka_kafka_1
zookeeper_1 | JMX enabled by default
zookeeper_1 | Using config: /zookeeper-3.4.6/bin/../conf/zoo.cfg
zookeeper_1 | 2015-11-21 22:01:07,237 [myid:] - INFO  [main:QuorumPeerConfig@103] - Reading configuration from: /zookeeper-3.4.6/bin/../conf/zoo.cfg
zookeeper_1 | 2015-11-21 22:01:07,242 [myid:] - INFO  [main:DatadirCleanupManager@78] - autopurge.snapRetainCount set to 3
zookeeper_1 | 2015-11-21 22:01:07,243 [myid:] - INFO  [main:DatadirCleanupManager@79] - autopurge.purgeInterval set to 0
zookeeper_1 | 2015-11-21 22:01:07,244 [myid:] - INFO  [main:DatadirCleanupManager@101] - Purge task is not scheduled.
zookeeper_1 | 2015-11-21 22:01:07,245 [myid:] - WARN  [main:QuorumPeerMain@113] - Either no config or no quorum defined in config, running  in standalone mode
zookeeper_1 | 2015-11-21 22:01:07,268 [myid:] - INFO  [main:QuorumPeerConfig@103] - Reading configuration from: /zookeeper-3.4.6/bin/../conf/zoo.cfg
zookeeper_1 | 2015-11-21 22:01:07,269 [myid:] - INFO  [main:ZooKeeperServerMain@95] - Starting server
zookeeper_1 | 2015-11-21 22:01:07,278 [myid:] - INFO  [main:Environment@100] - Server environment:zookeeper.version=3.4.6-1569965, built on 02/20/2014 09:09 GMT
zookeeper_1 | 2015-11-21 22:01:07,284 [myid:] - INFO  [main:Environment@100] - Server environment:host.name=6aea63350ca5
zookeeper_1 | 2015-11-21 22:01:07,285 [myid:] - INFO  [main:Environment@100] - Server environment:java.version=1.7.0_85
zookeeper_1 | 2015-11-21 22:01:07,285 [myid:] - INFO  [main:Environment@100] - Server environment:java.vendor=Oracle Corporation
zookeeper_1 | 2015-11-21 22:01:07,286 [myid:] - INFO  [main:Environment@100] - Server environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
zookeeper_1 | 2015-11-21 22:01:07,286 [myid:] - INFO  [main:Environment@100] - Server environment:java.class.path=/zookeeper-3.4.6/bin/../build/classes:/zookeeper-3.4.6/bin/../build/lib/*.jar:/zookeeper-3.4.6/bin/../lib/slf4j-log4j12-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/slf4j-api-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.4.6/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.4.6/bin/../lib/jline-0.9.94.jar:/zookeeper-3.4.6/bin/../zookeeper-3.4.6.jar:/zookeeper-3.4.6/bin/../src/java/lib/*.jar:/zookeeper-3.4.6/bin/../conf:
zookeeper_1 | 2015-11-21 22:01:07,288 [myid:] - INFO  [main:Environment@100] - Server environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
zookeeper_1 | 2015-11-21 22:01:07,288 [myid:] - INFO  [main:Environment@100] - Server environment:java.io.tmpdir=/tmp
zookeeper_1 | 2015-11-21 22:01:07,293 [myid:] - INFO  [main:Environment@100] - Server environment:java.compiler=<NA>
zookeeper_1 | 2015-11-21 22:01:07,299 [myid:] - INFO  [main:Environment@100] - Server environment:os.name=Linux
zookeeper_1 | 2015-11-21 22:01:07,299 [myid:] - INFO  [main:Environment@100] - Server environment:os.arch=amd64
zookeeper_1 | 2015-11-21 22:01:07,300 [myid:] - INFO  [main:Environment@100] - Server environment:os.version=4.0.9-boot2docker
zookeeper_1 | 2015-11-21 22:01:07,300 [myid:] - INFO  [main:Environment@100] - Server environment:user.name=root
zookeeper_1 | 2015-11-21 22:01:07,301 [myid:] - INFO  [main:Environment@100] - Server environment:user.home=/root
zookeeper_1 | 2015-11-21 22:01:07,301 [myid:] - INFO  [main:Environment@100] - Server environment:user.dir=/
zookeeper_1 | 2015-11-21 22:01:07,312 [myid:] - INFO  [main:ZooKeeperServer@755] - tickTime set to 2000
zookeeper_1 | 2015-11-21 22:01:07,315 [myid:] - INFO  [main:ZooKeeperServer@764] - minSessionTimeout set to -1
zookeeper_1 | 2015-11-21 22:01:07,316 [myid:] - INFO  [main:ZooKeeperServer@773] - maxSessionTimeout set to -1
zookeeper_1 | 2015-11-21 22:01:07,349 [myid:] - INFO  [main:NIOServerCnxnFactory@94] - binding to port 0.0.0.0/0.0.0.0:2181
kafka_1     | log4j:WARN No appenders could be found for logger (kafka.server.KafkaServer).
kafka_1     | log4j:WARN Please initialize the log4j system properly.
zookeeper_1 | 2015-11-21 22:01:07,574 [myid:] - INFO  [NIOServerCxn.Factory:0.0.0.0/0.0.0.0:2181:NIOServerCnxnFactory@197] - Accepted socket connection from /172.17.0.36:50208
zookeeper_1 | 2015-11-21 22:01:07,584 [myid:] - WARN  [NIOServerCxn.Factory:0.0.0.0/0.0.0.0:2181:ZooKeeperServer@822] - Connection request from old client /172.17.0.36:50208; will be dropped if server is in r-o mode
zookeeper_1 | 2015-11-21 22:01:07,585 [myid:] - INFO  [NIOServerCxn.Factory:0.0.0.0/0.0.0.0:2181:ZooKeeperServer@868] - Client attempting to establish new session at /172.17.0.36:50208
zookeeper_1 | 2015-11-21 22:01:07,588 [myid:] - INFO  [SyncThread:0:FileTxnLog@199] - Creating new log file: log.1
zookeeper_1 | 2015-11-21 22:01:07,605 [myid:] - INFO  [SyncThread:0:ZooKeeperServer@617] - Established session 0x1512c10a63a0000 with negotiated timeout 6000 for client /172.17.0.36:50208
zookeeper_1 | 2015-11-21 22:01:07,703 [myid:] - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@645] - Got user-level KeeperException when processing sessionid:0x1512c10a63a0000 type:create cxid:0x1 zxid:0x2 txntype:-1 reqpath:n/a Error Path:/brokers/ids Error:KeeperErrorCode = NoNode for /brokers/ids
zookeeper_1 | 2015-11-21 22:01:07,714 [myid:] - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@645] - Got user-level KeeperException when processing sessionid:0x1512c10a63a0000 type:create cxid:0x2 zxid:0x3 txntype:-1 reqpath:n/a Error Path:/brokers Error:KeeperErrorCode = NoNode for /brokers
^CGracefully stopping... (press Ctrl+C again to force)
Stopping dockerkafka_kafka_1...
Stopping dockerkafka_zookeeper_1...
Killing dockerkafka_kafka_1... done
Killing dockerkafka_zookeeper_1... done
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)
* [docker-zookeeper](https://github.com/mcandre/docker-zookeeper)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)

# SEE ALSO

* [hello-kafka](https://github.com/mcandre/hello-kafka), an example Java program that talks to a Kafka cluster like kafka-docker

# CREDITS

Inspired by [wurstmeister/kafka-docker](https://github.com/wurstmeister/kafka-docker)

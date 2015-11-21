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
zookeeper_1 | 2015-11-21 20:52:38,551 [myid:] - INFO  [main:QuorumPeerConfig@103] - Reading configuration from: /zookeeper-3.4.6/bin/../conf/zoo.cfg
zookeeper_1 | 2015-11-21 20:52:38,563 [myid:] - INFO  [main:DatadirCleanupManager@78] - autopurge.snapRetainCount set to 3
zookeeper_1 | 2015-11-21 20:52:38,564 [myid:] - INFO  [main:DatadirCleanupManager@79] - autopurge.purgeInterval set to 0
zookeeper_1 | 2015-11-21 20:52:38,564 [myid:] - INFO  [main:DatadirCleanupManager@101] - Purge task is not scheduled.
zookeeper_1 | 2015-11-21 20:52:38,565 [myid:] - WARN  [main:QuorumPeerMain@113] - Either no config or no quorum defined in config, running  in standalone mode
zookeeper_1 | 2015-11-21 20:52:38,582 [myid:] - INFO  [main:QuorumPeerConfig@103] - Reading configuration from: /zookeeper-3.4.6/bin/../conf/zoo.cfg
zookeeper_1 | 2015-11-21 20:52:38,597 [myid:] - INFO  [main:ZooKeeperServerMain@95] - Starting server
zookeeper_1 | 2015-11-21 20:52:38,605 [myid:] - INFO  [main:Environment@100] - Server environment:zookeeper.version=3.4.6-1569965, built on 02/20/2014 09:09 GMT
zookeeper_1 | 2015-11-21 20:52:38,606 [myid:] - INFO  [main:Environment@100] - Server environment:host.name=a9f70d812869
zookeeper_1 | 2015-11-21 20:52:38,607 [myid:] - INFO  [main:Environment@100] - Server environment:java.version=1.7.0_85
zookeeper_1 | 2015-11-21 20:52:38,607 [myid:] - INFO  [main:Environment@100] - Server environment:java.vendor=Oracle Corporation
zookeeper_1 | 2015-11-21 20:52:38,610 [myid:] - INFO  [main:Environment@100] - Server environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
zookeeper_1 | 2015-11-21 20:52:38,611 [myid:] - INFO  [main:Environment@100] - Server environment:java.class.path=/zookeeper-3.4.6/bin/../build/classes:/zookeeper-3.4.6/bin/../build/lib/*.jar:/zookeeper-3.4.6/bin/../lib/slf4j-log4j12-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/slf4j-api-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.4.6/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.4.6/bin/../lib/jline-0.9.94.jar:/zookeeper-3.4.6/bin/../zookeeper-3.4.6.jar:/zookeeper-3.4.6/bin/../src/java/lib/*.jar:/zookeeper-3.4.6/bin/../conf:
zookeeper_1 | 2015-11-21 20:52:38,611 [myid:] - INFO  [main:Environment@100] - Server environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
zookeeper_1 | 2015-11-21 20:52:38,612 [myid:] - INFO  [main:Environment@100] - Server environment:java.io.tmpdir=/tmp
zookeeper_1 | 2015-11-21 20:52:38,613 [myid:] - INFO  [main:Environment@100] - Server environment:java.compiler=<NA>
zookeeper_1 | 2015-11-21 20:52:38,618 [myid:] - INFO  [main:Environment@100] - Server environment:os.name=Linux
zookeeper_1 | 2015-11-21 20:52:38,619 [myid:] - INFO  [main:Environment@100] - Server environment:os.arch=amd64
zookeeper_1 | 2015-11-21 20:52:38,620 [myid:] - INFO  [main:Environment@100] - Server environment:os.version=4.0.9-boot2docker
zookeeper_1 | 2015-11-21 20:52:38,621 [myid:] - INFO  [main:Environment@100] - Server environment:user.name=root
zookeeper_1 | 2015-11-21 20:52:38,621 [myid:] - INFO  [main:Environment@100] - Server environment:user.home=/root
zookeeper_1 | 2015-11-21 20:52:38,623 [myid:] - INFO  [main:Environment@100] - Server environment:user.dir=/
zookeeper_1 | 2015-11-21 20:52:38,635 [myid:] - INFO  [main:ZooKeeperServer@755] - tickTime set to 2000
zookeeper_1 | 2015-11-21 20:52:38,646 [myid:] - INFO  [main:ZooKeeperServer@764] - minSessionTimeout set to -1
zookeeper_1 | 2015-11-21 20:52:38,646 [myid:] - INFO  [main:ZooKeeperServer@773] - maxSessionTimeout set to -1
zookeeper_1 | 2015-11-21 20:52:38,685 [myid:] - INFO  [main:NIOServerCnxnFactory@94] - binding to port 0.0.0.0/0.0.0.0:2181
kafka_1     | [2015-11-21 20:52:38,952] INFO Starting Kafka server... (kafka.server.KafkaServer)
kafka_1     | [2015-11-21 20:52:38,965] INFO No log directory found, creating '/tmp/kafka-logs' (kafka.log.LogManager)
kafka_1     | [2015-11-21 20:52:38,968] INFO starting log cleaner every 60000 ms (kafka.log.LogManager)
kafka_1     | [2015-11-21 20:52:38,974] INFO connecting to ZK: 172.17.1.105:2181 (kafka.server.KafkaZooKeeper)
kafka_1     | [2015-11-21 20:52:38,992] INFO Client environment:zookeeper.version=3.3.3-1203054, built on 11/17/2011 05:47 GMT (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,992] INFO Starting ZkClient event thread. (org.I0Itec.zkclient.ZkEventThread)
kafka_1     | [2015-11-21 20:52:38,993] INFO Client environment:host.name=7a1f719fa26c (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,994] INFO Client environment:java.version=1.7.0_85 (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,995] INFO Client environment:java.vendor=Oracle Corporation (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,995] INFO Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,995] INFO Client environment:java.class.path=:/kafka-0.7.0-incubating-src/bin/../project/boot/scala-2.8.0/lib/scala-compiler.jar:/kafka-0.7.0-incubating-src/bin/../project/boot/scala-2.8.0/lib/scala-library.jar:/kafka-0.7.0-incubating-src/bin/../core/target/scala_2.8.0/kafka-0.7.0.jar:/kafka-0.7.0-incubating-src/bin/../core/lib/*.jar:/kafka-0.7.0-incubating-src/bin/../perf/target/scala_2.8.0/kafka-perf-0.7.0.jar:/kafka-0.7.0-incubating-src/bin/../core/lib_managed/scala_2.8.0/compile/jopt-simple-3.2.jar:/kafka-0.7.0-incubating-src/bin/../core/lib_managed/scala_2.8.0/compile/log4j-1.2.15.jar:/kafka-0.7.0-incubating-src/bin/../core/lib_managed/scala_2.8.0/compile/snappy-java-1.0.4.1.jar:/kafka-0.7.0-incubating-src/bin/../core/lib_managed/scala_2.8.0/compile/zkclient-0.1.jar:/kafka-0.7.0-incubating-src/bin/../core/lib_managed/scala_2.8.0/compile/zookeeper-3.3.4.jar (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,995] INFO Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,995] INFO Client environment:java.io.tmpdir=/tmp (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,995] INFO Client environment:java.compiler=<NA> (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,995] INFO Client environment:os.name=Linux (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,996] INFO Client environment:os.arch=amd64 (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,998] INFO Client environment:os.version=4.0.9-boot2docker (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,998] INFO Client environment:user.name=root (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:38,999] INFO Client environment:user.home=/root (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:39,006] INFO Client environment:user.dir=/ (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:39,009] INFO Initiating client connection, connectString=172.17.1.105:2181 sessionTimeout=6000 watcher=org.I0Itec.zkclient.ZkClient@1ac80699 (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-21 20:52:39,027] INFO Opening socket connection to server /172.17.1.105:2181 (org.apache.zookeeper.ClientCnxn)
zookeeper_1 | 2015-11-21 20:52:39,041 [myid:] - INFO  [NIOServerCxn.Factory:0.0.0.0/0.0.0.0:2181:NIOServerCnxnFactory@197] - Accepted socket connection from /172.17.1.106:33207
kafka_1     | [2015-11-21 20:52:39,046] INFO Socket connection established to dockerkafka_zookeeper_1/172.17.1.105:2181, initiating session (org.apache.zookeeper.ClientCnxn)
zookeeper_1 | 2015-11-21 20:52:39,052 [myid:] - WARN  [NIOServerCxn.Factory:0.0.0.0/0.0.0.0:2181:ZooKeeperServer@822] - Connection request from old client /172.17.1.106:33207; will be dropped if server is in r-o mode
zookeeper_1 | 2015-11-21 20:52:39,053 [myid:] - INFO  [NIOServerCxn.Factory:0.0.0.0/0.0.0.0:2181:ZooKeeperServer@868] - Client attempting to establish new session at /172.17.1.106:33207
zookeeper_1 | 2015-11-21 20:52:39,056 [myid:] - INFO  [SyncThread:0:FileTxnLog@199] - Creating new log file: log.1
kafka_1     | [2015-11-21 20:52:39,074] INFO Session establishment complete on server dockerkafka_zookeeper_1/172.17.1.105:2181, sessionid = 0x1512bd1f4b40000, negotiated timeout = 6000 (org.apache.zookeeper.ClientCnxn)
zookeeper_1 | 2015-11-21 20:52:39,076 [myid:] - INFO  [SyncThread:0:ZooKeeperServer@617] - Established session 0x1512bd1f4b40000 with negotiated timeout 6000 for client /172.17.1.106:33207
kafka_1     | [2015-11-21 20:52:39,077] INFO zookeeper state changed (SyncConnected) (org.I0Itec.zkclient.ZkClient)
kafka_1     | [2015-11-21 20:52:39,182] INFO Awaiting connections on port 9092 (kafka.network.Acceptor)
kafka_1     | [2015-11-21 20:52:39,185] INFO Will not load MX4J, mx4j-tools.jar is not in the classpath (kafka.utils.Mx4jLoader$)
kafka_1     | [2015-11-21 20:52:39,188] INFO Registering broker /brokers/ids/0 (kafka.server.KafkaZooKeeper)
zookeeper_1 | 2015-11-21 20:52:39,203 [myid:] - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@645] - Got user-level KeeperException when processing sessionid:0x1512bd1f4b40000 type:create cxid:0x1 zxid:0x2 txntype:-1 reqpath:n/a Error Path:/brokers/ids Error:KeeperErrorCode = NoNode for /brokers/ids
zookeeper_1 | 2015-11-21 20:52:39,217 [myid:] - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@645] - Got user-level KeeperException when processing sessionid:0x1512bd1f4b40000 type:create cxid:0x2 zxid:0x3 txntype:-1 reqpath:n/a Error Path:/brokers Error:KeeperErrorCode = NoNode for /brokers
kafka_1     | [2015-11-21 20:52:39,227] INFO Registering broker /brokers/ids/0 succeeded with id:0,creatorId:172.17.1.106-1448139159188,host:172.17.1.106,port:9092 (kafka.server.KafkaZooKeeper)
kafka_1     | [2015-11-21 20:52:39,246] INFO Starting log flusher every 1000 ms with the following overrides Map() (kafka.log.LogManager)
kafka_1     | [2015-11-21 20:52:39,248] INFO Kafka server started. (kafka.server.KafkaServer)
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

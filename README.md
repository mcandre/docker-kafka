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
Going to remove dockerkafka_kafka_1, dockerkafka_zookeeper_1
Removing dockerkafka_kafka_1... done
Removing dockerkafka_zookeeper_1... done
Creating dockerkafka_zookeeper_1...
Creating dockerkafka_kafka_1...
Attaching to dockerkafka_zookeeper_1, dockerkafka_kafka_1
zookeeper_1 | JMX enabled by default
zookeeper_1 | Using config: /zookeeper-3.4.6/bin/../conf/zoo.cfg
zookeeper_1 | 2015-11-20 05:23:59,351 [myid:] - INFO  [main:QuorumPeerConfig@103] - Reading configuration from: /zookeeper-3.4.6/bin/../conf/zoo.cfg
zookeeper_1 | 2015-11-20 05:23:59,371 [myid:] - INFO  [main:DatadirCleanupManager@78] - autopurge.snapRetainCount set to 3
zookeeper_1 | 2015-11-20 05:23:59,372 [myid:] - INFO  [main:DatadirCleanupManager@79] - autopurge.purgeInterval set to 0
zookeeper_1 | 2015-11-20 05:23:59,373 [myid:] - INFO  [main:DatadirCleanupManager@101] - Purge task is not scheduled.
zookeeper_1 | 2015-11-20 05:23:59,374 [myid:] - WARN  [main:QuorumPeerMain@113] - Either no config or no quorum defined in config, running  in standalone mode
zookeeper_1 | 2015-11-20 05:23:59,391 [myid:] - INFO  [main:QuorumPeerConfig@103] - Reading configuration from: /zookeeper-3.4.6/bin/../conf/zoo.cfg
zookeeper_1 | 2015-11-20 05:23:59,401 [myid:] - INFO  [main:ZooKeeperServerMain@95] - Starting server
zookeeper_1 | 2015-11-20 05:23:59,411 [myid:] - INFO  [main:Environment@100] - Server environment:zookeeper.version=3.4.6-1569965, built on 02/20/2014 09:09 GMT
zookeeper_1 | 2015-11-20 05:23:59,411 [myid:] - INFO  [main:Environment@100] - Server environment:host.name=35438246b6f5
zookeeper_1 | 2015-11-20 05:23:59,412 [myid:] - INFO  [main:Environment@100] - Server environment:java.version=1.7.0_85
zookeeper_1 | 2015-11-20 05:23:59,413 [myid:] - INFO  [main:Environment@100] - Server environment:java.vendor=Oracle Corporation
zookeeper_1 | 2015-11-20 05:23:59,414 [myid:] - INFO  [main:Environment@100] - Server environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
zookeeper_1 | 2015-11-20 05:23:59,415 [myid:] - INFO  [main:Environment@100] - Server environment:java.class.path=/zookeeper-3.4.6/bin/../build/classes:/zookeeper-3.4.6/bin/../build/lib/*.jar:/zookeeper-3.4.6/bin/../lib/slf4j-log4j12-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/slf4j-api-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.4.6/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.4.6/bin/../lib/jline-0.9.94.jar:/zookeeper-3.4.6/bin/../zookeeper-3.4.6.jar:/zookeeper-3.4.6/bin/../src/java/lib/*.jar:/zookeeper-3.4.6/bin/../conf:
zookeeper_1 | 2015-11-20 05:23:59,415 [myid:] - INFO  [main:Environment@100] - Server environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
zookeeper_1 | 2015-11-20 05:23:59,415 [myid:] - INFO  [main:Environment@100] - Server environment:java.io.tmpdir=/tmp
zookeeper_1 | 2015-11-20 05:23:59,416 [myid:] - INFO  [main:Environment@100] - Server environment:java.compiler=<NA>
zookeeper_1 | 2015-11-20 05:23:59,421 [myid:] - INFO  [main:Environment@100] - Server environment:os.name=Linux
zookeeper_1 | 2015-11-20 05:23:59,422 [myid:] - INFO  [main:Environment@100] - Server environment:os.arch=amd64
zookeeper_1 | 2015-11-20 05:23:59,423 [myid:] - INFO  [main:Environment@100] - Server environment:os.version=4.0.9-boot2docker
zookeeper_1 | 2015-11-20 05:23:59,424 [myid:] - INFO  [main:Environment@100] - Server environment:user.name=root
zookeeper_1 | 2015-11-20 05:23:59,424 [myid:] - INFO  [main:Environment@100] - Server environment:user.home=/root
zookeeper_1 | 2015-11-20 05:23:59,425 [myid:] - INFO  [main:Environment@100] - Server environment:user.dir=/
zookeeper_1 | 2015-11-20 05:23:59,447 [myid:] - INFO  [main:ZooKeeperServer@755] - tickTime set to 2000
zookeeper_1 | 2015-11-20 05:23:59,447 [myid:] - INFO  [main:ZooKeeperServer@764] - minSessionTimeout set to -1
zookeeper_1 | 2015-11-20 05:23:59,448 [myid:] - INFO  [main:ZooKeeperServer@773] - maxSessionTimeout set to -1
zookeeper_1 | 2015-11-20 05:23:59,491 [myid:] - INFO  [main:NIOServerCnxnFactory@94] - binding to port 0.0.0.0/0.0.0.0:2181
kafka_1     | [2015-11-20 05:23:59,948] INFO Verifying properties (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,978] INFO Property advertised.host.name is overridden to 192.168.99.100 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,979] INFO Property broker.id is overridden to 0 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,980] INFO Property log.cleaner.enable is overridden to false (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,980] INFO Property log.dirs is overridden to /tmp/kafka-logs (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,981] INFO Property log.retention.check.interval.ms is overridden to 300000 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,982] INFO Property log.retention.hours is overridden to 168 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,982] INFO Property log.segment.bytes is overridden to 1073741824 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,982] INFO Property num.io.threads is overridden to 8 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,983] INFO Property num.network.threads is overridden to 3 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,983] INFO Property num.partitions is overridden to 1 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,983] INFO Property num.recovery.threads.per.data.dir is overridden to 1 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,984] INFO Property port is overridden to 9092 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,984] INFO Property socket.receive.buffer.bytes is overridden to 102400 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,984] INFO Property socket.request.max.bytes is overridden to 104857600 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,984] INFO Property socket.send.buffer.bytes is overridden to 102400 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,984] INFO Property zookeeper.connect is overridden to 172.17.1.16:2181 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:23:59,985] INFO Property zookeeper.connection.timeout.ms is overridden to 6000 (kafka.utils.VerifiableProperties)
kafka_1     | [2015-11-20 05:24:00,034] INFO [Kafka Server 0], starting (kafka.server.KafkaServer)
kafka_1     | [2015-11-20 05:24:00,037] INFO [Kafka Server 0], Connecting to zookeeper on 172.17.1.16:2181 (kafka.server.KafkaServer)
kafka_1     | [2015-11-20 05:24:00,052] INFO Starting ZkClient event thread. (org.I0Itec.zkclient.ZkEventThread)
kafka_1     | [2015-11-20 05:24:00,056] INFO Client environment:zookeeper.version=3.4.6-1569965, built on 02/20/2014 09:09 GMT (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,056] INFO Client environment:host.name=729903b2965b (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,057] INFO Client environment:java.version=1.7.0_85 (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,057] INFO Client environment:java.vendor=Oracle Corporation (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:java.class.path=:/kafka_2.10-0.8.2-beta/bin/../core/build/dependant-libs-2.10.4*/*.jar:/kafka_2.10-0.8.2-beta/bin/../examples/build/libs//kafka-examples*.jar:/kafka_2.10-0.8.2-beta/bin/../contrib/hadoop-consumer/build/libs//kafka-hadoop-consumer*.jar:/kafka_2.10-0.8.2-beta/bin/../contrib/hadoop-producer/build/libs//kafka-hadoop-producer*.jar:/kafka_2.10-0.8.2-beta/bin/../clients/build/libs/kafka-clients*.jar:/kafka_2.10-0.8.2-beta/bin/../libs/jopt-simple-3.2.jar:/kafka_2.10-0.8.2-beta/bin/../libs/kafka-clients-0.8.2-beta.jar:/kafka_2.10-0.8.2-beta/bin/../libs/kafka_2.10-0.8.2-beta-javadoc.jar:/kafka_2.10-0.8.2-beta/bin/../libs/kafka_2.10-0.8.2-beta-scaladoc.jar:/kafka_2.10-0.8.2-beta/bin/../libs/kafka_2.10-0.8.2-beta-sources.jar:/kafka_2.10-0.8.2-beta/bin/../libs/kafka_2.10-0.8.2-beta-test.jar:/kafka_2.10-0.8.2-beta/bin/../libs/kafka_2.10-0.8.2-beta.jar:/kafka_2.10-0.8.2-beta/bin/../libs/log4j-1.2.16.jar:/kafka_2.10-0.8.2-beta/bin/../libs/lz4-1.2.0.jar:/kafka_2.10-0.8.2-beta/bin/../libs/metrics-core-2.2.0.jar:/kafka_2.10-0.8.2-beta/bin/../libs/scala-library-2.10.4.jar:/kafka_2.10-0.8.2-beta/bin/../libs/slf4j-api-1.7.6.jar:/kafka_2.10-0.8.2-beta/bin/../libs/slf4j-log4j12-1.6.1.jar:/kafka_2.10-0.8.2-beta/bin/../libs/snappy-java-1.1.1.7.jar:/kafka_2.10-0.8.2-beta/bin/../libs/zkclient-0.3.jar:/kafka_2.10-0.8.2-beta/bin/../libs/zookeeper-3.4.6.jar:/kafka_2.10-0.8.2-beta/bin/../core/build/libs/kafka_2.10*.jar (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:java.io.tmpdir=/tmp (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:java.compiler=<NA> (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:os.name=Linux (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:os.arch=amd64 (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:os.version=4.0.9-boot2docker (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:user.name=root (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:user.home=/root (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,058] INFO Client environment:user.dir=/ (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,060] INFO Initiating client connection, connectString=172.17.1.16:2181 sessionTimeout=6000 watcher=org.I0Itec.zkclient.ZkClient@37fead5c (org.apache.zookeeper.ZooKeeper)
kafka_1     | [2015-11-20 05:24:00,081] INFO Opening socket connection to server 172.17.1.16/172.17.1.16:2181. Will not attempt to authenticate using SASL (unknown error) (org.apache.zookeeper.ClientCnxn)
zookeeper_1 | 2015-11-20 05:24:00,088 [myid:] - INFO  [NIOServerCxn.Factory:0.0.0.0/0.0.0.0:2181:NIOServerCnxnFactory@197] - Accepted socket connection from /172.17.1.17:45555
kafka_1     | [2015-11-20 05:24:00,093] INFO Socket connection established to 172.17.1.16/172.17.1.16:2181, initiating session (org.apache.zookeeper.ClientCnxn)
zookeeper_1 | 2015-11-20 05:24:00,101 [myid:] - INFO  [NIOServerCxn.Factory:0.0.0.0/0.0.0.0:2181:ZooKeeperServer@868] - Client attempting to establish new session at /172.17.1.17:45555
zookeeper_1 | 2015-11-20 05:24:00,104 [myid:] - INFO  [SyncThread:0:FileTxnLog@199] - Creating new log file: log.1
zookeeper_1 | 2015-11-20 05:24:00,130 [myid:] - INFO  [SyncThread:0:ZooKeeperServer@617] - Established session 0x151235963aa0000 with negotiated timeout 6000 for client /172.17.1.17:45555
kafka_1     | [2015-11-20 05:24:00,138] INFO Session establishment complete on server 172.17.1.16/172.17.1.16:2181, sessionid = 0x151235963aa0000, negotiated timeout = 6000 (org.apache.zookeeper.ClientCnxn)
kafka_1     | [2015-11-20 05:24:00,141] INFO zookeeper state changed (SyncConnected) (org.I0Itec.zkclient.ZkClient)
zookeeper_1 | 2015-11-20 05:24:00,189 [myid:] - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@645] - Got user-level KeeperException when processing sessionid:0x151235963aa0000 type:create cxid:0x4 zxid:0x3 txntype:-1 reqpath:n/a Error Path:/brokers Error:KeeperErrorCode = NoNode for /brokers
zookeeper_1 | 2015-11-20 05:24:00,218 [myid:] - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@645] - Got user-level KeeperException when processing sessionid:0x151235963aa0000 type:create cxid:0xa zxid:0x7 txntype:-1 reqpath:n/a Error Path:/config Error:KeeperErrorCode = NoNode for /config
zookeeper_1 | 2015-11-20 05:24:00,227 [myid:] - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@645] - Got user-level KeeperException when processing sessionid:0x151235963aa0000 type:create cxid:0x10 zxid:0xb txntype:-1 reqpath:n/a Error Path:/admin Error:KeeperErrorCode = NoNode for /admin
kafka_1     | [2015-11-20 05:24:00,262] INFO Log directory '/tmp/kafka-logs' not found, creating it. (kafka.log.LogManager)
kafka_1     | [2015-11-20 05:24:00,270] INFO Loading logs. (kafka.log.LogManager)
kafka_1     | [2015-11-20 05:24:00,286] INFO Logs loading complete. (kafka.log.LogManager)
kafka_1     | [2015-11-20 05:24:00,287] INFO Starting log cleanup with a period of 300000 ms. (kafka.log.LogManager)
kafka_1     | [2015-11-20 05:24:00,291] INFO Starting log flusher with a default period of 9223372036854775807 ms. (kafka.log.LogManager)
kafka_1     | [2015-11-20 05:24:00,321] INFO Awaiting socket connections on 0.0.0.0:9092. (kafka.network.Acceptor)
kafka_1     | [2015-11-20 05:24:00,322] INFO [Socket Server on Broker 0], Started (kafka.network.SocketServer)
kafka_1     | [2015-11-20 05:24:00,393] INFO Will not load MX4J, mx4j-tools.jar is not in the classpath (kafka.utils.Mx4jLoader$)
kafka_1     | [2015-11-20 05:24:00,439] INFO 0 successfully elected as leader (kafka.server.ZookeeperLeaderElector)
zookeeper_1 | 2015-11-20 05:24:00,445 [myid:] - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@645] - Got user-level KeeperException when processing sessionid:0x151235963aa0000 type:setData cxid:0x1a zxid:0xf txntype:-1 reqpath:n/a Error Path:/controller_epoch Error:KeeperErrorCode = NoNode for /controller_epoch
zookeeper_1 | 2015-11-20 05:24:00,508 [myid:] - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@645] - Got user-level KeeperException when processing sessionid:0x151235963aa0000 type:delete cxid:0x27 zxid:0x11 txntype:-1 reqpath:n/a Error Path:/admin/preferred_replica_election Error:KeeperErrorCode = NoNode for /admin/preferred_replica_election
kafka_1     | [2015-11-20 05:24:00,550] INFO Registered broker 0 at path /brokers/ids/0 with address 192.168.99.100:9092. (kafka.utils.ZkUtils$)
kafka_1     | [2015-11-20 05:24:00,589] INFO [Kafka Server 0], started (kafka.server.KafkaServer)
kafka_1     | [2015-11-20 05:24:00,659] INFO New leader is 0 (kafka.server.ZookeeperLeaderElector$LeaderChangeListener)
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

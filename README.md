neo4j
=====

Neo4j is a highly scalable, robust (fully ACID) native graph database. Neo4j is used in mission-critical apps by thousands of leading, startups, enterprises, and governments around the world.

With the Dockerfile on repository you've a docker neo4j community edition image ready to go.

### Setup

1. Execute this command:

	`docker run -i -t -d --privileged -p 7474:7474 daneroo/neo4j`

2. Access to http://localhost:7474 or with your browser.


### Local setup
My setup using `boot2docker` on OSX.

    export DOCKER_HOST=tcp://192.168.59.103:2375
    docker build -t daneroo/neo4j .
    docker run -t -d --privileged -p 7474:7474 daneroo/neo4j

If you wanted https

    docker run -t -d --privileged -p 7474:7474 -p 7473:7473 daneroo/neo4j



### Notes
This was forked from [tpires/neo4j](https://github.com/tpires/neo4j)
We removed the local IP binding in launch.sh in favor of binding to all ports (0.0.0.0), and hence move the config command back to Dockerfile.

The main reason for this was to be able to start/stop the container multiple times; the `sed` command in the launch file would fail when the image was brought up again.

If we wanted access to the neo4j-shell, it is included in: 

    apt-get install neo4j-advanced

### TODO
* Make the data-dir mountable
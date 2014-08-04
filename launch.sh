#!/bin/bash

NEO4J_HOME=/var/lib/neo4j

ulimit -n 65536 ; .$NEO4J_HOME/bin/neo4j console


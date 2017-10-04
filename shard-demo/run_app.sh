#!/bin/bash

. ../util.sh

cd java-app; mvn compile exec:java -Dexec.mainClass=io.metaparticle.examples.web.Main



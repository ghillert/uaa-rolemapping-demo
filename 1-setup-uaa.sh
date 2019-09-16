#!/bin/sh
git clone https://github.com/pivotal/uaa-bundled.git
cd uaa-bundled
./mvnw clean install
java -jar target/uaa-bundled-1.0.0.BUILD-SNAPSHOT.jar
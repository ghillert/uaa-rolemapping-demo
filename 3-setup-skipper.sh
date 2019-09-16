#!/bin/sh

git clone https://github.com/spring-cloud/spring-cloud-skipper.git
cd spring-cloud-skipper
./mvnw clean package -DskipTests=true
java -jar spring-cloud-skipper-server/target/spring-cloud-skipper-server-2.2.0.BUILD-SNAPSHOT.jar
#!/bin/sh
git clone https://github.com/spring-cloud/spring-cloud-dataflow.git
cd spring-cloud-dataflow
./mvnw clean package -DskipTests=true
cd ..

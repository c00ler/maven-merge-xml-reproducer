#!/bin/sh

rm -rf maven3.log maven4.log

cd maven-3
./mvnw help:effective-pom > ../maven3.log
cd ../maven-4
./mvnw help:effective-pom > ../maven4.log
cd ..

diff maven3.log maven4.log

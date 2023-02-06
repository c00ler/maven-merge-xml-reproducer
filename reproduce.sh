#!/bin/sh

rm -rf maven-4-alpha2.log maven-4-alpha-3.log

cd maven-4-alpha2
./mvnw help:effective-pom > ../maven-4-alpha2.log
cd ../maven-4-alpha3
./mvnw help:effective-pom > ../maven-4-alpha3.log
cd ..

diff maven-4-alpha2.log maven-4-alpha3.log

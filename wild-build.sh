#!/bin/bash

PRJ="$(cd `dirname $0` && pwd)"

mkdir -p $PRJ/parent/target
cp $PRJ/parent/pom.xml $PRJ/parent/target

mvn clean install

#!/bin/bash

# In reality this file is *NOT* being published outside of 'myhouse'!

PRJ="$(cd `dirname $0` && pwd)"

mkdir -p $PRJ/parent/target

( cat <<EOF
  <parent>
    <groupId>com.myhouse</groupId>
    <artifactId>root</artifactId>
    <version>1.0-SNAPSHOT</version>
    <relativePath>../../inhouse-root</relativePath>
  </parent>
EOF
) \
| sed -e '/<!--parent-->/r /dev/stdin' $PRJ/parent/pom.xml \
| sed -e '/<!--parent-->/d' > $PRJ/parent/target/pom.xml

# Unclear how to get rid of the tag line in one sed call.

mvn clean install

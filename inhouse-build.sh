#!/bin/bash

# In reality this file is *NOT* being published outside of 'myhouse'!

TARGET=install
#TARGET=deploy

# Anything in-house specific is "injected" as a property (here repo.mgr.root)

mvn clean $TARGET \
    -Drepo.mgr.root=http://nexus.myhouse.com:8081/nexus/content/repositories

#!/bin/sh

docker-compose up -d && xdg-open http://localhost:8080/awesome_maven_project/JNDI > /dev/null 2>&1


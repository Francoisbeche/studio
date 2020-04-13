#!/bin/bash
# $1: name
# $2: host

if [[ (-z "$1")  || (-z "$2") ]]
  then
    echo "wrong command : $0 [name] [hosts] ex: $0 [api-name] [example.com]"
    exit 1
fi
curl -v -XPOST \
  http://localhost:8001/services \
  -H 'Content-Type: application/json' \
  -d '{"name":"'$1'","retries":1,"host":"'$2'"}'
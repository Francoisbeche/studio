#!/bin/bash

if [[ (-z "$1")  || (-z "$2") || (-z "$3")  || (-z "$4")  || (-z "$5") ]]
  then
    echo "wrong command : $0 [name] [methods[]] [host] [path[]] [serviceId] ex: $0 [user] [['GET']] [['example.com']] [['/user']] [123ji9929jepzozpd8778dpzzddzd989ldzk] "
    exit 1
fi

curl -v -XPOST \
  http://localhost:8001/routes \
  -H 'Content-Type: application/json' \
  -d '{"name":"'$1'", "protocols": ["http", "https"], "methods": '$2',"hosts": '$3', "paths": '$4', "strip_path": true, "preserve_host": false, "service": {"id":"'$5'"} }'

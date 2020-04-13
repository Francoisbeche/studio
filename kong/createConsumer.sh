#!/bin/bash

if [[ (-z "$1")  || (-z "$2")]]
  then
    echo "wrong command : $0 [username] ex: $0 [toto] 128373 "
    exit 1
fi

curl -d "username="$1"&custom_id="$2 http://localhost:8001/consumers/
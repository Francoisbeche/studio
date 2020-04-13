#!/bin/bash

if [[ (-z "$1") ]]
  then
    echo "wrong command : ex: $0 9789GUYG7576FH76"
    exit 1
fi

curl -X POST http://localhost:8001/consumers/$1/jwt -H "Content-Type: application/x-www-form-urlencoded"
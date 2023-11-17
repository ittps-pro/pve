#!/bin/sh

handler() {
  rest=$1
  if [ "$rest" = "list" ]; then
    ls *.sh
  fi
}


curl $REPLIT_DB_URL -d 'data = []'
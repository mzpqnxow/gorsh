#!/bin/sh

PORT=$1
socat OPENSSL-LISTEN:$PORT,fork,key=server.key,cert=server.pem,reuseaddr,verify=0 EXEC:./listen.sh


#!/bin/bash

hr="-------------------------------------------"
br=""

message="Usage:  sh revoke_server_.cert.sh [cert name]"

if [ $# -ne 1 ];
then
   echo $message
   exit 2
fi

file=$1

openssl ca -revoke ./server/certificates/$1.crt -keyfile ca/ca.key -cert ./ca/ca.crt -out ./crl/crl.crl -config ./conf/ca_openssl.cnf
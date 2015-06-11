#!/bin/bash

hr="-------------------------------------------"
br=""

message="Usage:  sh export-p12.sh [cert name]"

if [ $# -ne 1 ];
then
   echo $message
   exit 2
fi

file=$1
openssl pkcs12 -export -out ./server/p12/$file.pfx -inkey ./server/keys/$file.key -in ./server/certificates/$file.crt
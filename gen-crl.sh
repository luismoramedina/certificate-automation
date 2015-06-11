days=365
openssl ca -gencrl -keyfile ca/ca.key -cert ca/ca.crt -days $days -crldays $days -out ./crl/crl.crl -config conf/ca_openssl.cnf
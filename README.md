certificate-automation
======================

Simple scripts designed to automate the OpenSSL CA and certificate issuing process.


### Create a Certificate Authority (key and self-signed cert):

1.  Execute on command line.

```bash
sh setup_certauth.sh
```

2.  Follow on-screen steps.

### Create a Server Certificate (with key, signed by CA):

1.  Execute on command line.

```bash
sh make_server_cert.sh <server-name>
```

2.  Follow on-screen steps.

### Create a Client Certificate (with key, pkcs [.p12] cert for browser):

1.  Execute on command line.

```bash
sh new_client_cert.sh <client-name>
```

2.  Follow on-screen steps.

### Generate the crl:

1.  Execute on command line.

```bash
sh gen-crl.sh
```

### Merge p12:

1.  Execute on command line.

```bash
sh export-p12.sh <server-name>
```

### Revoke server cert:

1.  Execute on command line.

```bash
sh revoke_server_cert.sh <server-name>
```

### Start ocsp service:

1.  Execute on command line.

```bash
sh ocsp-server-start.sh
```

### Make ocsp certificate:

1.  Execute on command line.

```bash
sh make_ocsp_server_cert.sh <ocsp-name>

```


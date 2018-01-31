#!/usr/bin/env bash

function stapler() {
  ISSUER_CER=$1
  SERVER_CER=$2
  NAME=$3

  URL=$(openssl x509 -in $SERVER_CER -text | grep "OCSP - URI:" | cut -d: -f2,3)
  openssl ocsp -noverify -no_nonce -respout /etc/ssl/ocsp/$NAME.resp -issuer $ISSUER_CER -cert $SERVER_CER -url $URL
}

cd /etc/letsencrypt/live
for name in *; do
  stapler "/etc/letsencrypt/live/$name/chain.pem" "/etc/letsencrypt/live/$name/cert.pem" "$name"
done

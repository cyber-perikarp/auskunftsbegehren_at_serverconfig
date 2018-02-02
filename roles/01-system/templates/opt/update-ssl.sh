#!/usr/bin/env bash
service nginx stop

certbot --standalone certonly --email sebastian.pfeifer@unicorncloud.org --agree-tos --must-staple --keep-until-expiring --non-interactive --rsa-key-size 4096 --expand -d goatberger.cyber-perikarp.eu
certbot --standalone certonly --email sebastian.pfeifer@unicorncloud.org --agree-tos --must-staple --keep-until-expiring --non-interactive --rsa-key-size 4096 --expand -d auskunftsbegehren.at -d www.auskunftsbegehren.at -d mail.auskunftsbegehren.at
bash /opt/update-stapling.sh

service nginx start

#!/usr/bin/env bash
certbot --standalone certonly --email sebastian.pfeifer@unicorncloud.org --agree-tos --must-staple --keep-until-expiring --non-interactive --rsa-key-size 4096 --expand -d goatberger.cyber-perikarp.eu
certbot --standalone certonly --email sebastian.pfeifer@unicorncloud.org --agree-tos --must-staple --keep-until-expiring --non-interactive --rsa-key-size 4096 --expand -d auskunftsbegehren.at -d www.auskunftsbegehren.at


exit 0

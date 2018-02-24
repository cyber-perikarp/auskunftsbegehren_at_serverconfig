#!/usr/bin/env bash
git clone https://github.com/cyber-perikarp/auskunftsbegehren_at.git /tmp/auskunftsbegehren_at
cd /tmp/auskunftsbegehren_at
docker build . --tag=auskunftsbegehren_at-local
rm -rf /tmp/auskunftsbegehren_at

#!/usr/bin/env bash
git clone https://github.com/cyber-perikarp/auskunftsbegehren_at.git /tmp/auskunftsbegehren_at
cd /tmp/auskunftsbegehren_at
docker build . --tag=auskunftsbegehren_at-local

git clone https://github.com/cyber-perikarp/auskunftsbegehren_at_generator.git /tmp/auskunftsbegehren_at_generator
cd /tmp/auskunftsbegehren_at_generator
docker build . --tag=auskunftsbegehren_at_generator-local

rm -rf /tmp/auskunftsbegehren_at_generator
rm -rf /tmp/auskunftsbegehren_at

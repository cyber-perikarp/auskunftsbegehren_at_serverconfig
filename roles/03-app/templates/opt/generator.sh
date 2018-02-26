#!/usr/bin/env bash
FILE=/tmp/generator.pid

if [ -f $FILE ]; then
   echo "Not running..."
else
  touch $FILE
  docker run -t -v /tmp/pdf:/var/pdfStorage --env-file /opt/docker/app.env auskunftsbegehren_at_generator-local
  rm $FILE
fi

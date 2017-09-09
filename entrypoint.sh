#!/bin/bash

if [ ${ENVIRONMENT} == "devel" ]; then
  exec carton exec morbo -l http://[0.0.0.0]:8080 "$@"
else
  exec carton exec hypnotoad -f "$@"
fi

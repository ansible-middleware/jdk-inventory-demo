#!/bin/bash
readonly JAVA_HOME=${1}

if [ ! -d "${JAVA_HOME}" ]; then
  echo "Missing required parameter: JAVA_HOME."
  exit 1
fi

dnf whatprovides -q "${JAVA_HOME}" | head -1 | sed -e 's/^\(.*\) : .*$/\1/g'

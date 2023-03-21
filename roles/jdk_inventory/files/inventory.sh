#!/bin/bash
for java_home in $(find /usr/ -wholename "*/bin/java" -type f )
do
  echo "${java_home}" | sed -e 's;bin/java;;g' -e 's;jre/;;g'
done | sort -u

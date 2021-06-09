#!/bin/sh
## Licensed under the terms of http://www.apache.org/licenses/LICENSE-2.0

## env | sort
#if [ -z "$1" ]; then
#   exec /bin/bash
#else 
echo /opt/fuseki/fuseki-server "$@"
exec /opt/fuseki/fuseki-server "$@"
#fi 



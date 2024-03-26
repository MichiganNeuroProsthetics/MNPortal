#!/bin/bash
#
# insta485run
#
# Clean, build and start server
#
# Andrew DeOrio <awdeorio@umich.edu>


# Stop on errors, print commands
# See https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -Eeuo pipefail
set -x

FILE=./var/portaldb.sqlite3
if ! test -f "$FILE"; then  
    echo "Error: can't find database var/portaldb.sqlite3"
    echo "Try: ./bin/portaldb create"
    exit 1
fi

# Runs server
npm run dev --watch &
flask --app portal --debug run --host 0.0.0.0 --port 8000

# If everything succeeded, return a zero exit code (success)
exit 0

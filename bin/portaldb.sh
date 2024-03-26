#!/bin/bash
# insta485db

# Stop on errors
# See https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -Eeuo pipefail

# Sanity check command line options
usage() {
  echo "Usage: $0 (create|destroy|reset|dump)"
}

if [ $# -ne 1 ]; then
  usage
  exit 1
fi

# Parse argument.  $1 is the first argument
case $1 in
  "create")
	mkdir -p var/uploads
	sqlite3 var/portaldb.sqlite3 < sql/schema.sql
    echo "schema established"
	sqlite3 var/portaldb.sqlite3 < sql/data.sql
    echo "data inserted"
	cp sql/uploads/* var/uploads/
    ;;

  "destroy")
	rm -rf var/portaldb.sqlite3 var/uploads
    ;;

  "reset")
	rm -rf var/portaldb.sqlite3 var/uploads
	mkdir -p var/uploads
	sqlite3 var/portaldb.sqlite3 < sql/schema.sql
	sqlite3 var/portaldb.sqlite3 < sql/data.sql
	cp sql/uploads/* var/uploads/
    ;;

#   "dump")
# 	sqlite3 -batch -line var/insta485.sqlite3 'SELECT * FROM comments'
# 	sqlite3 -batch -line var/insta485.sqlite3 'SELECT * FROM following'
# 	sqlite3 -batch -line var/insta485.sqlite3 'SELECT * FROM likes'
# 	sqlite3 -batch -line var/insta485.sqlite3 'SELECT * FROM posts'
# 	sqlite3 -batch -line var/insta485.sqlite3 'SELECT * FROM users'
#     ;;
    
  *)
    usage
    exit 1
    ;;
  esac


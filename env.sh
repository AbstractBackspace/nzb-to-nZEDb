#!/bin/bash
#
# This script maps the the following env variables to files on the filesystem:
#   * TMDB_KEY
#   * SALT_KEY
#   * TOR_PROXY_HOST
#
# # # # # # # # # # # # # # # # # # # # # # # # # # #

# TMDB_KEY
if [ -z "$TMDB_KEY" ]; then
    echo "TMDB_KEY is not set"
else
    echo "$TMDB_KEY" > /etc/tmdb.key
fi

# SALT_KEY
if [ -z "$SALT_KEY" ]; then
    echo "SALT_KEY is not set"
else
    echo "$SALT_KEY" > /etc/salt.key
fi

# TOR_PROXY_HOST
if [ -z "$TOR_PROXY_HOST" ]; then
    echo "TOR_PROXY_HOST is not set"
else
    echo "$TOR_PROXY_HOST" > /etc/tor.proxy.host
fi
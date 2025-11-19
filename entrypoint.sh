#!/bin/sh
set -e

echo "Starting nginx configuration..."

# Replace API_KEY in template
envsubst '$API_KEY' < /tmp/nginx.conf.template > /etc/nginx/nginx.conf

echo "Generated nginx.conf:"
cat /etc/nginx/nginx.conf

# Test nginx configuration
nginx -t

echo "Starting nginx..."
exec nginx -g 'daemon off;'

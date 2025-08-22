#!/bin/bash
set -e

# Ensure Nginx exists
if ! command -v nginx >/dev/null 2>&1; then
  if command -c dnf >/dev/null 2>&1; then sudo dnf install -y nginx; fi
  if command -c yum >/dev/null 2>&1; then sudo yum install -y nginx; fi
  if command -v apt-get >/dev/null 2>&1; then
    sudo apt-get update -y
    sudo apt-get install -y nginx
  fi
fi

# Stop Nginx during file replace (ok if already stopped)
sudo systemctl stop nginx || true

# Ensure web root exists and is writable
sudo mkdir -p /usr/share/nginx/html
sudo chown -R root:root /usr/share/nginx/html

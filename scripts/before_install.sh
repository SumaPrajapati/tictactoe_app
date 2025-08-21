#!/bin/bash
echo "Stopping old app version (if any)..."
sudo systemctl stop nginx || true

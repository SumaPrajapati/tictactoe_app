#!/bin/bash
set -e
sudo systemctl start nginx
sudo systemctl enable nginx

#!/bin/bash
set -e
# Files have been copied by CodeDeploy per `files:` block.
# You could add permissions or cache-busting here if needed.
sudo find /usr/share/nginx/html -type f -print0 | xargs -0 --no-run-if-empty sudo chmod 0644

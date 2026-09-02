#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
git pull --ff-only
sudo mkdir -p /var/www/subnet-calculator
sudo cp -r ./index.html /var/www/subnet-calculator/
sudo chown -R caddy:caddy /var/www/subnet-calculator
echo "Deployed subnet-calculator $(git rev-parse --short HEAD)"

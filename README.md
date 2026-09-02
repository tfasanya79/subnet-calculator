# Subnet Calculator

A clean, visual CIDR/subnet calculator built as a portfolio project.

## Live demo
https://aipal-staging.cloud/subnet-calculator/

## Deploy
This app is deployed on a VM via a simple git-based workflow (no local development):
1. SSH into the VM
2. `cd ~/subnet-calculator && git pull`
3. Copy build output to `/var/www/subnet-calculator/`
4. `sudo systemctl reload caddy` (only needed if Caddyfile changes)

See `deploy.sh` for the automated version.

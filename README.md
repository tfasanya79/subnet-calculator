# subnet. - CIDR & Subnet Calculator

A clean, visual IPv4 subnet calculator that shows why the numbers are what they are, not just the numbers themselves.

Most subnet calculators dump a wall of output. This one visualizes the network/host bit split, breaks the address down into binary octet by octet, and explains the reasoning alongside the results. It's built for students, network/IT admins, and anyone studying for Network+/CCNA who wants the math to actually click.

**Live app:** https://aipal-staging.cloud/subnet-calculator/

## Features

- **Live IPv4 + CIDR input**: type an address (`192.168.1.10`) or a full CIDR (`192.168.1.10/24`)
- **Interactive prefix slider**: drag from `/0` to `/32` and watch everything recompute instantly
- **Visual address block**: color coded bar showing the network bits vs. host bits split
- **Binary breakdown**: full 32-bit binary view, octet by octet, mapped to dotted decimal
- **Computed values**, each one copyable with a click:
  - Network address
  - Broadcast address
  - First and last usable host
  - Usable host count and total addresses
  - Subnet mask and wildcard mask
  - CIDR notation
- **"Why" panel**: a plain English explanation of the current calculation
- **Client side only**: no backend, no tracking, nothing ever leaves your browser

## Tech stack

Single file vanilla HTML, CSS, and JS (no framework, no build step) so the logic stays easy to read and audit. IBM Plex Sans/Mono gives it a clean, technical feel.

## Roadmap ideas

- IPv6 support
- Subnet splitting / VLSM planner (divide a block into N subnets)
- Shareable permalink for a given IP/prefix

## Development and deployment

This project follows a server first workflow. All changes are made and deployed directly on the host VM, with no local development environment involved.

```bash
ssh <vm-host>
cd ~/subnet-calculator
git pull
./deploy.sh
```

`deploy.sh` copies the app to `/var/www/subnet-calculator/` (served via Caddy) and fixes ownership. Reload Caddy only if `/etc/caddy/Caddyfile` itself changes.

---

Built by Tim, a small tool for a specific job.

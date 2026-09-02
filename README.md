# subnet. - CIDR & Subnet Calculator

A clean, visual IPv4 subnet calculator that shows why the numbers are what they are, not just the numbers themselves.

Most subnet calculators dump a wall of output. This one visualizes the network/host bit split, breaks the address down into binary octet by octet, explains the reasoning alongside the results, and can split a network into smaller subnets sized for how many hosts each one actually needs.

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
- **Shareable link**: the current IP and prefix are kept in the URL as you type, and a "copy shareable link" button puts it straight on your clipboard
- **Subnet splitter (VLSM)**: enter a comma-separated list of host counts (for example `50, 20, 10, 4`) and it carves the network above into correctly sized, non-overlapping subnets, showing the CIDR, network address, usable range, broadcast, and mask for each one
- **Client side only**: no backend, no tracking, nothing ever leaves your browser

## Tech stack

Single file vanilla HTML, CSS, and JS (no framework, no build step) so the logic stays easy to read and audit. IBM Plex Sans/Mono gives it a clean, technical feel.

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

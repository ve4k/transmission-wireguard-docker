# transmission-wireguard-docker
Run Transmission in a Docker container with WireGuard

## Setup
`docker pull ve4k/transmission-wireguard`

`docker run --cap-add NET_ADMIN --cap-add SYS_MODULE --privileged -v [YOUR TRANSMISSION CONFIG DIRECTORY]:/etc/transmission -v [DOWNLOADS FOLDER]:/downloads -v [YOUR WIREGUARD CONFIG]:/etc/wireguard/wg0.conf -p [DESIRED WEBUI PORT]:9091 ve4k/transmission-wireguard`

Some manual configuration is still required.

Tested on Mullvad VPN.

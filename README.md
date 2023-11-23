# qbit-vpn

This project builds ontop of the linuxserver/qbittorrent docker image and adds a connection to the protonvpn service with the kill switch enabled to hide your ip address while torrenting.

## Docker

This docker image:

1. Takes the linuxserver/qbittorrent:latest image
2. Installs protonvpn-cli
3. Authenticates
4. Enables the killswitch
5. Connects to a p2p connection

Since this image depends on linuxserver/qbittorrent, this image will auto update every Sunday to get updates to that image.  
**If this causes things to break please create an issue in the github repo.**

Main Repo: https://hub.docker.com/r/linuxserver/qbittorrent

Github: https://github.com/HaruVON/qbit-vpn

### ENV Variables

Below are the environmental variables for the linuxserver/qbittorrent image and for this image.

#### linuxserver/qbittorrent ENV vars

1. **PUID**  
   The user id that is used.  
   Ex: 1000

2. **PGID**  
   The group id that is used.  
   Ex: 1000

3. **TZ**  
   The timezone.  
   Ex: Etc/UTC

4. **WEBUI_PORT**  
   The web port.  
   Ex: 80

#### This images ENV vars

1. **PVPN_UNAME**  
   Your ProtonVPN username.  
   **Note** - this is different from your account username. This is specific to using the VPN.  
   Ex: c8v39TxYmFABA9JP (fake)

2. **PVPN_PASS**  
   Your ProtonVPN password.  
   **Note** - this is different from your account password. This is specific to using the VPN.  
   Ex: hPXgr3fzE2k6KAvNX2Nd3R3iavrPuh3g (fake)

3. **PVPN_TIER** - Default: 3 - defined in Dockerfile
   Your ProtonVPN Tier. A number from 1-4
   Ex: 3

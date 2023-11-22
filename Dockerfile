FROM linuxserver/qbittorrent:latest

COPY scripts /scripts

ENV HOME=/root

RUN apk add --no-cache dialog pipx openvpn iptables expect \
    && pipx install protonvpn-cli

ENV HOME=/config
ENV PVPN_TIER=3

ENTRYPOINT ["sh", "/scripts/qbit-startup.sh"]

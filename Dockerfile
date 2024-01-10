FROM linuxserver/qbittorrent:latest

COPY scripts /scripts

RUN apk add --no-cache dialog pipx openvpn iptables expect \
    && pipx install protonvpn-cli

ENV PVPN_TIER=3

ENTRYPOINT ["sh", "/scripts/qbit-startup.sh"]

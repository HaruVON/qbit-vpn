FROM linuxserver/qbittorrent:latest

COPY scripts /

ENV HOME=/root

RUN apk add --no-cache pipx openvpn iptables expect \
    && pipx install protonvpn-cli

ENV HOME=/config

ENTRYPOINT ["sh", "/qbit-startup.sh"]

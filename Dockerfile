FROM linuxserver/qbittorrent:latest

COPY scripts /scripts

ENV HOME=/root

RUN apk add --no-cache pipx openvpn iptables expect \
    && pipx install protonvpn-cli \
    && chmod +x /scripts/qbit-startup.sh \
    && chmod +x /scripts/qbit-startup.sh

ENV HOME=/config

ENTRYPOINT ["/scripts/qbit-startup.sh"]

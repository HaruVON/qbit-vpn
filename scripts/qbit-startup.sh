#!/usr/bin/env bash

if ! [ -e /root/.pvpn-cli/pvpn-cli.cfg ]
then
    /scripts/default-script.exp
fi

printf '5\n2\n' | /root/.local/bin/protonvpn configure
/root/.local/bin/protonvpn c --p2p
exec /init

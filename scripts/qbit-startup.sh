#!/usr/bin/env bash

/default-script.exp
printf '5\n2\n' | /root/.local/bin/protonvpn configure
/root/.local/bin/protonvpn c --p2p
exec /init

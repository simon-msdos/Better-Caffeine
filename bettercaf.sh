#!/bin/bash
mkdir -p ~/.config/systemd/user && \
echo -e "[Unit]\nDescription=Stay Awake like Better Caffeine\nAfter=default.target\n\n[Service]\nExecStart=/usr/bin/systemd-inhibit --what=idle:sleep --why=\"Stay awake like Better Caffeine\" /bin/sleep infinity\nRestart=always\n\n[Install]\nWantedBy=default.target" > ~/.config/systemd/user/better-caffeine.service && \
systemctl --user daemon-reload && \
loginctl enable-linger $USER && \
echo -e "\nalias cafon='systemctl --user enable --now better-caffeine.service'\nalias cafoff='systemctl --user disable --now better-caffeine.service'" >> ~/.bashrc && \
source ~/.bashrc && \
echo '✅ All set! Use "cafon" to keep your system awake, and "cafoff" to turn it off.'

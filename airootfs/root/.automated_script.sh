#!/bin/bash

if [[ $(tty) != "/dev/tty1" ]]; then
    exit
fi

mkdir -p /root/.ssh
curl -L https://github.com/jasonrm.keys -o /root/.ssh/authorized_keys

systemctl start sshd

export PATH="/usr/local/tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

tmuxifier load-session archiso

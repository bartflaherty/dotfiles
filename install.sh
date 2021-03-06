#!/usr/bin/env bash

DIR="~/powerlevel10k"

if [ -d "$DIR" ]; then
	echo "powerlevel10k exists"
else
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $DIR
fi

echo "* - nofile 100000" | sudo tee -a /etc/security/limits.conf

#!/bin/bash

# Thanks to @bretthoerner for the ubuntu mirror of emacs 24
wget -q -O - http://emacs.naquadah.org/key.gpg | sudo apt-key add -
echo "deb http://emacs.naquadah.org/ natty/" >> /etc/apt/sources.list
echo "deb-src http://emacs.naquadah.org/ natty/" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y emacs-snapshot git-core rlwrap openjdk-6-jdk tmux \
    curl tree unzip

# Leiningen
if [ ! -r ~/bin/lein ]; then
    wget -O ~/bin/lein https://github.com/technomancy/leiningen/raw/stable/bin/lein
    chmod +x ~/bin/lein
    ~/bin/lein self-install
fi

# Jark
if [ ! -r ~/bin/jark ]; then
    wget -O ~/bin/jark https://github.com/downloads/icylisper/jark/jark-0.3
    chmod +x ~/bin/jark
    ~/bin/jark install
fi

chown -R vagrant ~

#!/bin/bash

gh="https://github.com"
gh_raw="https://raw.githubusercontent.com"
repo="docker/machine"
version="v0.14.0"
arch=`uname -s`-`uname -m`

# now it is standard exec path for users.
mkdir -p $HOME/.local/bin

curl -fsSL -o $HOME/.local/bin/docker-machine \
        $gh/$repo/releases/download/$version/docker-machine-$arch
chmod +x $HOME/.local/bin/docker-machine

# I use personal bash completion directory.
for i in "-prompt" "-wrapper" ""; do
        name="docker-machine$i.bash"
        curl -fsSL -o $HOME/.bash_completion.d/$name \
                $gh_raw/$repo/$version/contrib/completion/bash/$name
done

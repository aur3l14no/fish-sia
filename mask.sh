#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash

LOCAL_PATH="${HOME}/.config/clash-meta/config.yaml"
PUBLIC_PATH="public-artifacts/Configs/ClashMeta.yaml"

# hide secret message
cp ${LOCAL_PATH} $PUBLIC_PATH
sed -i 's/".*"\s*#\s*QUOTED-SECRET/""/' $PUBLIC_PATH
sed -i '/^.*\s*#\s*SECRET$/d' $PUBLIC_PATH

# hide github mirror site
sed -i 's@https://gh\..*\.xyz/raw/@https://raw.githubusercontent.com/@' $PUBLIC_PATH
sed -i 's@https://gh\..*\.xyz/gist/@https://gist.githubusercontent.com/@' $PUBLIC_PATH
sed -i 's@https://gh\..*\.xyz/_/@https://github.com/@' $PUBLIC_PATH

diff $LOCAL_PATH $PUBLIC_PATH

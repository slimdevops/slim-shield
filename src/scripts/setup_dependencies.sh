#!/usr/bin/env bash
echo "Install Slim.ai CLI"
curl https://platform.slim.dev/.service/releases/slim/latest | sh
echo "Install XML Utilities"
sudo apt-get update -qq
sudo apt install -qq -y libxml2-utils
export PATH="$HOME/.slim/bin:$PATH"
echo "export PATH=$HOME/.slim/bin:$PATH" >> "$BASH_ENV"
slim config gen --save --token "${SLIM_API_TOKEN}" --org "${SLIM_ORG_ID}"
slim status build
cat ~/.config/slim/config

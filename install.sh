#!/usr/bin/env sh

if [ -z "${VERSION}" ]; then
  VERSION="$(curl https://api.github.com/repos/koyashiro/vpm-repos-gen/releases/latest | jq -r .tag_name)"
fi

curl -fsSL "https://github.com/koyashiro/vpm-repos-gen/releases/download/v${VERSION}/vpm-repos-gen-${TAG_NAME}-x86_64-unknown-linux-gnu.tar.gz" \
  | tar -xz -C /usr/local/bin

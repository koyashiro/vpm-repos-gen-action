#!/usr/bin/env bash

set -eu

case "${VERSION:-latest}" in
  latest)
    VERSION="$(curl https://api.github.com/repos/koyashiro/vpm-repos-gen/releases/latest | jq -r .tag_name | sed 's/^v//')"
    ;;
  v*)
    VERSION="${VERSION#v}"
    ;;
esac

echo "Install vpm-repos-gen $VERSION"

WORK_DIR="$(mktemp --tmpdir -d vpm-repos-gen.XXXXXXXXXXXXXXXX)"

curl -fsSL "https://github.com/koyashiro/vpm-repos-gen/releases/download/v${VERSION}/vpm-repos-gen-${VERSION}-x86_64-unknown-linux-gnu.tar.gz" \
  | tar -xz -C "${WORK_DIR}"

mv "$WORK_DIR/vpm-repos-gen" /usr/local/bin
chmod +x /usr/local/bin/vpm-repos-gen

rm -rf "$WORK_DIR"

echo "Installed to /usr/loca/bin/vpm-repos-gen"

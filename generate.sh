#!/usr/bin/env bash

set -eu

if [[ -z "${REPOS}" ]]; then
  unset REPOS
else
  REPOS="${REPOS//$'\n'/,}"
fi

vpm-repos-gen

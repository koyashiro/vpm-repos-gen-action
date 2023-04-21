#!/usr/bin/env bash

set -eu

if [[ -z "${REPOS}" ]]; then
  unset REPOS
fi

vpm-repos-gen

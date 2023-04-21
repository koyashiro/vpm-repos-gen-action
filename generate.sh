#!/usr/bin/env bash

set -eu

if [[ -z "${REPOS:-}" ]]; then
  unset REPOS
else
  REPOS="$(printf '%s' "${REPOS}" | sed -e ':a;N;$!ba;s/^\n//g;s/\n\([^\n]\)/,\1/g;s/\n$//g')"
fi

vpm-repos-gen

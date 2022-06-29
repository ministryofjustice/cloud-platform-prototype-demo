#!/bin/sh

set -eu pipefail

node lib/build/generate-assets \
  && node listen-on-port.js
#!/usr/bin/env bash

set -e

# Install Node runtime
su appuser -c "echo prefix = ~/.bin >> ~/.npmrc && curl https://www.npmjs.org/install.sh | sh"



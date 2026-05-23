#!/usr/bin/env bash
set -o errexit

# Render build phase script
# - installs gems
# - precompiles assets
# Note: DB migration is intentionally NOT run here because Render build phase
# may not have access to your production database.

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean


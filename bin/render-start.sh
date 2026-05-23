#!/usr/bin/env bash
set -o errexit

# Render runtime/start phase script
# - prepares DB (create + migrate) so tables like users exist
# - starts puma

bundle exec rails db:prepare
exec bundle exec puma -C config/puma.rb


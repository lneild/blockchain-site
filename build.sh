#!/bin/bash
set -e

# Install Ruby if not present (Vercel build containers may not have it)
if ! command -v ruby > /dev/null; then
  echo "Ruby not found. Exiting."
  exit 1
fi

gem install bundler
bundle install
bundle exec jekyll build
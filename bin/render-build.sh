#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rake assets:clean
bundle exec rake db:migrate
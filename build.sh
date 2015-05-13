#!/usr/bin/env bash

set -e

# Add app user
adduser --disabled-password --home=/app --gecos "" appuser

# Install ruby using ruby-build

# The base path to the Ruby
ruby_home="/usr/local"

# Packages needed to build Ruby
apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

# Use ruby-build to install Ruby
clone_dir=/tmp/ruby-build-$$
git clone https://github.com/sstephenson/ruby-build.git $clone_dir
$clone_dir/bin/ruby-build "$RB_VER" "$ruby_home"
rm -rf $clone_dir
unset clone_dir

# Install Node runtime
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs

# Install bundler
gem install bundler

# Clean up
apt-get clean
rm -rf /var/lib/apt/lists/*



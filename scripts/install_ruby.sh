#!/usr/bin/env bash

set -e
# Install ruby using ruby-build

# The base path to the Ruby
ruby_home="/usr/local"

# Use ruby-build to install Ruby
clone_dir=/tmp/ruby-build-$$
git clone https://github.com/sstephenson/ruby-build.git $clone_dir
$clone_dir/bin/ruby-build "$RB_VER" "$ruby_home"
rm -rf $clone_dir
unset clone_dir

# Install bundler
gem install bundler

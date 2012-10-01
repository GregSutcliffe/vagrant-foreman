#!/bin/bash

# packages - this needs a conditional to handle Centos & Debian
echo "deb http://apt.puppetlabs.com squeeze main" > /etc/apt/sources.list.d/puppetlabs.list
wget -q -O - http://apt.puppetlabs.com/pubkey.gpg | sudo apt-key add -
apt-get update
apt-get install -y vim git-core

# uncomment the appropriate puppet version:

# Latest in repo:
# apt-get install -y puppet-common puppet

# Latest 2.7 series
apt-get install -y puppet-common=2.7.19-1puppetlabs2 puppet=2.7.19-1puppetlabs2

# Update this last so we don't cause downgrade issues
apt-get install -y facter


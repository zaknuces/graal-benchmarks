#!/bin/sh
echo 'Run IPS test'
ruby --jvm test-ips.rb
echo 'Run time benchmark'
ruby --jvm test-profile.rb
echo 'Run time benchmark native'
ruby --native test-profile.rb
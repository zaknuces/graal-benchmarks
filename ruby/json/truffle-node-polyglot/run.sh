#!/bin/sh
echo 'Run IPS test'
ruby --jvm --polyglot --experimental-options --single-threaded test-ips.rb
echo 'Run time benchmark'
ruby --jvm --polyglot --experimental-options --single-threaded test-time.rb
# To run ruby polyglot in native mode. Image rebuild is needed.
# gu rebuild-image polyglot
# echo 'Run time benchmark native'
#ruby --native --polyglot --experimental-options --single-threaded test-time.rb

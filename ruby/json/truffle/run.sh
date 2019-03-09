#!/bin/sh
echo 'Run IPS test'
ruby --jvm test.rb
echo 'Run time benchmark'
ruby --jvm test2.rb
echo 'Run time benchmark native'
ruby --native test2.rb

#!/bin/sh
echo 'Run IPS test'
ruby test.rb
echo 'Run Profiler'
ruby --profile test2.rb

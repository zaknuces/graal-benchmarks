#!/bin/sh
echo 'Run IPS test'
ruby test.rb
echo 'Run Profiler'
ruby --memtracer test2.rb

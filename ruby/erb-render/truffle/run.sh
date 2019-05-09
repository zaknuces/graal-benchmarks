#!/bin/sh
echo 'Run IPS test'
ruby test.rb
echo 'Run Profiler'
ruby --memtracer --experimental-options test2.rb
ruby --cputracer --experimental-options test2.rb

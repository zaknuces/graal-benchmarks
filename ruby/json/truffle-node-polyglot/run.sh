#!/bin/sh
echo 'Run IPS test'
ruby --jvm --polyglot -Xsingle_threaded test.rb
echo 'Run time benchmark'
ruby --jvm --polyglot -Xsingle_threaded test2.rb
# To run ruby polyglot in native mode. Image rebuild is needed.
#gu rebuild-image polyglot
#echo 'Run time benchmark native'
#ruby --polyglot -Xsingle_threaded test2.rb

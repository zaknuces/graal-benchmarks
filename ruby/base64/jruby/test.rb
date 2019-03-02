require 'benchmark/ips'
require "base64"

STR_SIZE = 10_000_00
TRIES = 10

str = "a" * STR_SIZE
str2 = ""

Benchmark.ips do |x|
  x.iterations = 3

  x.report("erb") {
    t, s = Time.now, 0
    TRIES.times do |i|
      str2 = Base64.strict_encode64(str)
      s += str2.bytesize
    end

    t, s = Time.now, 0
    TRIES.times do |i|
      s += Base64.strict_decode64(str2).bytesize
    end
  }
end

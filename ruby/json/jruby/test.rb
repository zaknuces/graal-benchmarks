require 'benchmark/ips'
require 'json'

jobj = JSON.parse(File.read('1.json'))
coordinates = jobj['coordinates']
len = coordinates.length
x = y = z = 0

Benchmark.ips do |x1|
  x1.iterations = 3
  x1.report("erb") {
    coordinates.each do |coord|
      x += coord['x']
      y += coord['y']
      z += coord['z']
    end
  }
end

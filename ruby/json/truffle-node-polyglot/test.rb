require 'benchmark/ips'
require 'json'

encoded = File.read('1.json')
jobj = Polyglot.eval('js', 'JSON.parse').call(encoded)
coordinates = Polyglot.as_enumerable(jobj[:coordinates])
len = coordinates.size
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

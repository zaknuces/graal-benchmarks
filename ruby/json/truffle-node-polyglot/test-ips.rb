require 'benchmark/ips'

Benchmark.ips do |x1|
  x1.iterations = 3
  x1.report("json test") {
    jobj = Polyglot.eval('js', 'JSON.parse').call(File.read('1.json'))
    coordinates = Polyglot.as_enumerable(jobj['coordinates'])
    x = y = z = 0
    coordinates.each do |coord|
      x += coord['x']
      y += coord['y']
      z += coord['z']
    end
  }
end

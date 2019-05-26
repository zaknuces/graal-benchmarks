require 'benchmark'

Benchmark.bm do |x|
  x.report {
    jobj = Polyglot.eval('python', 'import json; \
      text = open(\'./1.json\', \'r\').read(); \
      json.loads(text);')
    coordinates = Polyglot.as_enumerable(jobj[:coordinates])
    x = y = z = 0
    coordinates.each do |coord|
      x += coord['x']
      y += coord['y']
      z += coord['z']
    end
  }
end

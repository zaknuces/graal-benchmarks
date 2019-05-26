require 'benchmark'
require 'json'

enchmark.bm do |x|
  x.report {
    jobj = JSON.parse(File.read('1.json'))
    coordinates = jobj['coordinates']
    len = coordinates.length
    x = y = z = 0
    coordinates.each do |coord|
      x += coord['x']
      y += coord['y']
      z += coord['z']
    end
  }
end

require 'benchmark/ips'
require 'erb'

data = <<erb
<html>
<head> <%= title %> </head>
<body>
  <h1> <%= title %> </h1>
  <p>
    <%= content %>
  </p>
</body>
</html>
erb

title = 'hello world!'
content = "hello world!\n" * 10
erb = ERB.new(data)
out = File.open('test.out', 'w')

Benchmark.ips do |x|
  x.iterations = 3
  x.report("erb") { out.write(erb.result(binding)) }
end

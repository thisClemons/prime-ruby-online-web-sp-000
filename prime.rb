require 'pry'
require 'benchmark'
require 'bigdecimal/math'

# def prime?(integer)
#   return true if integer == 2
#   range = (2..integer/4.floor).to_a
#   range.each do |i|
#     range.each do |j|
#       return false if (i * 2) * (j * 2) == integer
#     end
#   end
#   return true
# end

def prime?(integer)
  return true if integer == 2
  return false if integer <= 0
  return false if integer % 2 == 0
  return false if integer == 1
  i = 3
  while i < integer.floor
    return false if integer % i  == 0
    i += 1
  end
  return true
end
#binding.pry
puts Benchmark.measure {prime?(2)}
puts Benchmark.measure {prime?(-5646846464866)}
puts Benchmark.measure {prime?(858)}
puts Benchmark.measure {prime?(1)}
puts Benchmark.measure {prime?(401)}
puts Benchmark.measure {prime?(857)}
puts Benchmark.measure {prime?(5939)}

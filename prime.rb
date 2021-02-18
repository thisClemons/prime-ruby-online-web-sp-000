require 'pry'
# require 'benchmark'
# require 'bigdecimal/math'

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
  i = 2
  while i < (integer / 4).floor
    return false if integer % (i*2)  == 0
    i += 1
  end
  return true
end
#binding.pry
# puts prime1loop?(857)
# puts Benchmark.measure {prime?(857)}
# puts Benchmark.measure {prime1loop?(857)}

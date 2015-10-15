FIB_CACHE = [0, 1]
def recursive_fib(num)
  FIB_CACHE[num] ||= recursive_fib(num - 1) + recursive_fib(num - 2)
end

puts recursive_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  #x.report("iterative_fib")  { iterative_fib(num)  }
end

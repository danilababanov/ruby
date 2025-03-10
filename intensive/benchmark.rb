# Модуль измеряет время выполнения ruby кода

require 'benchmark'

puts Benchmark.measure { 'a' * 1_000_000_000 }

n = 5_000_000

Benchmark.bm(5) do |x|
  x.report("for:") { for i in 1..n ; a = '1'; end }
  x.report("times:") { n.times do  ; a = '1'; end }
  x.report("upto:") { 1.upto(n) do ; a = '1'; end }
end
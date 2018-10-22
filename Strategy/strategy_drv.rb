# Strategy Pattern by Peter Kim
require 'StrategyContext'
require 'StrategyAdd'
require 'StrategyMultiply'



n1=5
n2=7

add = StrategyAdd.new()
strategy = StrategyContext.new(add)
result_add = strategy.executeStrategy(n1,n2)

multiply = StrategyMultiply.new()
strategy = StrategyContext.new(multiply)
result_multiply = strategy.executeStrategy(n1, n2)

puts "Results - Add is " + result_add.to_s
puts "Results - Multiply : " + result_multiply.to_s
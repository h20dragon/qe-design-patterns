# Strategy Pattern by Peter Kim
require 'StrategyContext'
require 'StrategyAdd'
require 'StrategyMultiply'


def getInt()
    puts "Enter number: "
    return gets().strip().to_i
end


def getOperand()
    puts "ENTER OPERATION (+, *) : "
    return gets().strip().to_s
end


##
# MAIN
##

# Initialize our strategy to use.
strategy=nil

n1=getInt()
n2=getInt()
operand=getOperand()

puts "X: #{n1}"
puts "Y: #{n2}"
puts "Operand: #{operand}"


# Select the appropriate strategy at run-time!
if operand=='+' then
    strategy_to_use = StrategyAdd.new()
elsif operand=='*' then
    strategy_to_use = StrategyMultiply.new()
else
    puts "Operand is not supported. Abort"
    exit(1)
end

# Set the strategy
strategy = StrategyContext.new(strategy_to_use)

# Execute with the strategy
result = strategy.executeStrategy(n1, n2)

puts "Result: #{result}"





@total_calls = 0

def fib(n)
  @total_calls = @total_calls + 1

  if n == 1
    1
  elsif  n == 2
    1
  else
    fib(n-1) + fib(n-2)
  end

end


n = 37
result = fib(n)
puts "fib(#{n}) : #{result}"
puts "total calls: #{@total_calls}"
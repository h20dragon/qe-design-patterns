


@total_calls = 0
@results = {}

def fib(n)
  @total_calls = @total_calls + 1

  if @results.has_key?(n)
    return @results[n]
  end

  if n == 1
    @results[n]=1
    1
  elsif  n == 2
    @results[n] = 1
    1
  else
    rc = fib(n-1) + fib(n-2)
    @results[n] = rc
  end

end

n = 37
result = fib(n)
puts "fib(#{n}) : #{result}"
puts "total calls: #{@total_calls}"
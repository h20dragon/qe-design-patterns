


class StrategyContext
  attr_accessor :strategy
  
  def initialize(s)
    @strategy = s    
  end
  
  def executeStrategy(n1, n2)
    return @strategy.execute(n1, n2)
  end
  
end
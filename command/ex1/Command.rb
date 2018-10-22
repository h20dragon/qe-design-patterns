

class Command
  attr_accessor :description
  
  def initialize(d=nil)
    @description=d.to_s
  end
  
  def execute()
    raise NotImplementedError
  end
  
end
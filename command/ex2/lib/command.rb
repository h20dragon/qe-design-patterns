
class Command

  def initialize(drv=nil)
    puts __FILE__ + (__LINE__).to_s + " Command"
    @drv=drv
  end


  def execute(drv=nil)
    raise NotImplementedError
  end

end
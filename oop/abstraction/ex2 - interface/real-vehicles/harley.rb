require_relative '../vehicle/vehicle'


class Harley < Vehicle

  def initialize()
    super({ :wheels => 2, :seats => 2, :doors => 0 , :engineType => 'Evo'})
  end

  def start()
    puts "Harley Davidson motorcycle start instructions"
  end

end
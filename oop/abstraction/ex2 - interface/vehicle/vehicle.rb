
require_relative './vehicle_interface'

class Vehicle < VehicleInterface

  def initialize( opts = {:wheels => 4, :doors => 4, :seats => 5, :engineType => "gas"} )
    @wheels = opts[:wheels]
    @doors = opts[:doors]
    @seats = opts[:seats]
    @engineType = opts[:engineType]

    puts "[Vehicle.initialize]\n\n"
  end

  def showSpecs()
    puts "[Vehicle.showSpects]"
    puts "\tWheels: #{@wheels}"
    puts "\tDoors : #{@doors}"
    puts "\tSeats : #{@seats}"
    puts "\tEngine Type: #{@engineType}\n\n"
  end

end

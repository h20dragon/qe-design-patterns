


class Vehicle

    # Java Constructor()
    def initialize( opts = {:wheels => 4, :doors => 4, :seats => 5, :engineType => "gas"} )

      # The following class attributes are not accessible outside this class
      @wheels = opts[:wheels]
      @doors = opts[:doors]
      @seats = opts[:seats]
      @engineType = opts[:engineType]

      puts "[Vehicle.initialize]\n\n"
    end

    def start()
      puts "[Vehicle.start]"
      puts "Turn ignition key to on\n\n"
    end

    def showSpecs()
      puts "[Vehicle.showSpects]"
      puts "\tWheels: #{@wheels}"
      puts "\tDoors : #{@doors}"
      puts "\tSeats : #{@seats}"
      puts "\tEngine Type: #{@engineType}\n\n"
    end



end


porsche = Vehicle.new()
porsche.showSpecs()
porsche.start()


puts porsche.doors
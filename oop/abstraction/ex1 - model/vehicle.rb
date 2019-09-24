#
# Example of a class modeling a Vehicle.
#

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

    def insert_key()
        puts "Insert Key"
    end

    def turn_key_clock_clockwise()
        puts "Turn Key Clockwise"
    end

    def pressBrake()
      puts "Press Brake"
    end

    def turn_key_counter_clockwise()
        puts "Turn Key counter clockwise"
    end

    def showSpecs()
      puts "[Vehicle.showSpects]"
      puts "\tWheels: #{@wheels}"
      puts "\tDoors : #{@doors}"
      puts "\tSeats : #{@seats}"
      puts "\tEngine Type: #{@engineType}\n\n"
    end

end


#
# MAIN
#
porsche = Vehicle.new()
porsche.pressBrake()
porsche.insert_key()
porsche.turn_key_counter_clockwise()


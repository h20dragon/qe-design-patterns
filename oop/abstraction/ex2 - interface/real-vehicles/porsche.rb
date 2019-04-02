require_relative '../vehicle/vehicle'


class Porsche < Vehicle


    def insert_key()
        puts "Insert Key"
    end

    def pressBrake()
      puts "Press Brake"
    end

    def turn_key_counter_clockwise()
        puts "Turn Key counter clockwise"
    end

    def start()
      puts "== Porsche start instructions =="

      pressBrake()
      insert_key()
      turn_key_counter_clockwise()
    end

end


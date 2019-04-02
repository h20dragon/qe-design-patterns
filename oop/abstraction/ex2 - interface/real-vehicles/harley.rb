require_relative '../vehicle/vehicle'


class Harley < Vehicle

  def initialize()
    super({ :wheels => 2, :seats => 2, :doors => 0 , :engineType => 'Evo'})
  end

  def open_choke_lever()
      puts ".. open_choke_lever"
  end

  def turn_ignition_on()
      puts ".. turn_ignition_on"
  end

  def start_engine()
      puts ".. start engine"
  end

  def close_choke_and_open_throttle()
      puts ".. close choke"
      puts ".. open throttle"
  end


  def start()
    puts "Harley Davidson motorcycle start instructions"
    open_choke_lever()
    turn_ignition_on()
    start_engine()
    close_choke_and_open_throttle()
  end

  def stop()
      puts "Harley Davidson motorcycle stop instructions"
  end

end

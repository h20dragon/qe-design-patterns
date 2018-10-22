
require 'instrument'

class Drums < Instrument


  attr :drumType

  def initialize(t)
    super("drums")
    @drumType = t
  end

  def play()
    puts "Bam, bam, rat-a-tat-tat ... my #{@drumType} drums"
  end


end
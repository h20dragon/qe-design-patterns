
require 'instrument'

class Guitar < Instrument

  attr :strings
  attr :guitarType

  def initialize(t)
    super("guitar")
    @strings = 6
    @guitarType = t
  end

  def play()
    puts "Strum, strum, strum, .. my #{@guitarType} guitar with #{@strings} strings!"
  end


end
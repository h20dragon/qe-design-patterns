
require 'guitar'
require 'drums'

instruments = [ Guitar.new("electric"), Guitar.new("acoustic"), Drums.new("bass")]

instruments.each do |instrument|
  instrument.play()
end

require_relative './real-vehicles/porsche'
require_relative './real-vehicles/harley'


porsche = Porsche.new()
#porsche.showSpecs()
porsche.start()


puts '-' * 72

harley = Harley.new()
#harley.showSpecs()
harley.start()

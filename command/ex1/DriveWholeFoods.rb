require_relative 'Command'

# Receiver Class
class DriveWholeFoods < Command
  
  
  def initialize(description="Drive to Costco")
    super description
  end
  
  def execute()
    puts "== #{@description} =="
    puts "Drive to Bethesda"
    puts "U-turn at Main St"
    puts "Right left Organic Drive"    
  end
  
  
end
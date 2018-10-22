require_relative 'Command'

# Receiver Class
class DriveCostco < Command
  
  
  def initialize(description="Drive to Costco")
    super description
  end
  
  def execute()
    puts "== #{@description} =="
    puts "Drive to Centreville"
    puts "Right turn on Costo Blvd"
    
  end
  
  
end
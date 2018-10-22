
require_relative 'Command'

# Invoker Class
class Drive
  attr_accessor :history
    
    
  def initialize
    @history=Array.new
  end
  
  def store_and_execute(cmd)
    @history << cmd.description
    cmd.execute()
  end
  
  def history()
    puts "\n== History =="
    @history.each do |h|
      puts h
    end
  end
  
end
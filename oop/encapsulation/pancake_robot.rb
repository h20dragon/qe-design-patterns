

# Encapsulation
##
# There's no need to expose the robot's ID.
# We don't want to expose our secret ingredient.
##
# We want the consumer to instruct the robot on how many pancakes need to be made.
##
# Results:
# pancake_robot.rb:....:in `<main>': private method `cookeOnePancake' called for #<PancakeRobot:0x007fdcc81a57a0> (NoMethodError)


class PancakeRobot

  attr_accessor :total

  def initialize
    @total = 0
    @robotID = "24601"
    @specialRecipe = "cinnamon"
  end

  # The details for making a pancake are not exposed.
  # The user (client) can only 'place an order'.
   private def cookeOnePancake
     # Code to cook
    puts "cooking 1 pancake with special recipe."
  end

   def placeOrder(n)
    n.times { |i|
      cookeOnePancake
      @total = @total + 1
    }
   end

  def serve
    puts "Pancake robot .. come and get while it's hot..."
    puts "\tPancake robot laying down #{@total} pancakes"
  end

end

#
# MAIN
#
robot = PancakeRobot.new()

robot.placeOrder(2)
puts "Total pancakes: " + robot.total().to_s
robot.serve()

robot.placeOrder(100)
robot.serve()

#puts "Special recipe is: #{robot.specialRecipe}"

# The following will throw an exception "NoMethodError"
robot.cookeOnePancake()

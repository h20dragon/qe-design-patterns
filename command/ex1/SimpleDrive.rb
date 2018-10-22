require_relative 'DriveCostco'
require_relative 'DriveWholeFoods'


def SaturdayGroceries()
  drivingInstructions = [
      DriveCostco.new("shop at Costco"),
      DriveWholeFoods.new("Organic $$$")
  ]
end

def SundayGroceries()
  drivingInstructions = [
      DriveCostco.new("shop at Costco"),
      DriveWholeFoods.new("Organic $$$"),
      DriveWholeFoods.new("Organic $$$")
  ]
end


SaturdayGroceries().each { |cmd|
  cmd.execute()
}
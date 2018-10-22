

require 'manager'

Manager.instance.add("stp", "https://stpcon.com")
Manager.instance.add("dcast", "https://dcast.io")

puts "Total browser: #{Manager.instance.total}"

Manager.instance.add("irs", "https://irs.gov")

puts "Total browser: #{Manager.instance.total}"

Manager.instance.quitAll()


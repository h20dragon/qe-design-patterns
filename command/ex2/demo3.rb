
require 'commands'
require 'command_list'
require 'selenium-webdriver'
require 'client'

def demo(b)
  commands = Commands.new()
  commands.add(LoadUrl.new(b, 'https://stpcon.com'))
  commands.add(LoadUrl.new(b, 'https://dcast.io'))
  commands.add(Click.new(b, {:xpath => '//a[text()="Join US"]'}))
  commands.execute()
end

puts "START"

b = Selenium::WebDriver.for :chrome
demo(b)

puts "PRESS ENTER"; gets()
b.close
b.quit
puts "END"
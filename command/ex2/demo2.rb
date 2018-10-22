
require 'commands'
require 'command_list'
require 'selenium-webdriver'
require 'client'


def demo(b)
  client = Client.new(b)
  client.goto('https://dcast.io')

  click = Click.new(b, {:xpath => '//a[text()="Join US"]'})
  click.execute()
end


puts "START DEMO 2 - Multiple commands"

b = Selenium::WebDriver.for :chrome
demo(b)

puts "PRESS ENTER"; gets()
b.close
b.quit
puts "END"
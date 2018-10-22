
require 'commands'
require 'command_list'
require 'selenium-webdriver'
require 'client'


puts "Start"

def demo(b)
  loadUrl = LoadUrl.new(b, 'https://stpcon.com')
  loadUrl.execute()
end

b = Selenium::WebDriver.for :chrome
demo(b)
puts "HIT ENTER"
gets()
b.close
b.quit

puts "END"
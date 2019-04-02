
require 'commands'
require 'command_list'
require 'selenium-webdriver'
require 'client'

def uatTest(b)
      commands = Commands.new()
      commands.add(LoadUrl.new(b, 'https://dcast.io'))
      commands.add(Click.new(b, {:xpath => '//a[text()="Join US"]'}))
      commands.execute()
      return commands
end

def regressionTest(b)
      commands = Commands.new()
      commands.add(LoadUrl.new(b, 'https://stpcon.com'))
      commands.execute()
      return commands
end


def demo(browser_list)

    testcases=Array.new

    # Every test suite runs regression tests
    browser_list.each do |b|
        testcases.push(regressionTest(b))
    end

    # Only 1 browser needs to run UAT
    uat=uatTest(browser_list[1])

    # Execute target testcases
    uat.execute()
    testcases[1].execute()

end

puts "START"

browser_list=Array.new
browser_list.push(Selenium::WebDriver.for :chrome)
browser_list.push(Selenium::WebDriver.for :chrome)

demo(browser_list)

puts "PRESS ENTER"; gets()

browser_list.each do |b|
    b.close
    b.quit
end

puts "END"

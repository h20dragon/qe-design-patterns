require 'selenium-webdriver'
require 'load_url'

class Client


    def initialize(b)
      @browser=b
    end

    def quit
      @browser.quit()
    end

    def add(id)
      @browser = Selenium::WebDriver.new :chrome
    end

    def goto(url)
      cmd = LoadUrl.new(@browser, url)
      cmd.execute()
    end

end
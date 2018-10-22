
require 'singleton'
require 'selenium-webdriver'

class Manager

    include Singleton
    attr_accessor :drv

    def initialize()
        @browsers = {}
    end

    def add(id, url)
        puts "== add #{id} =="
        @browsers[id] = Selenium::WebDriver.for :chrome
        @browsers[id].get(url)
    end

    def total
        @browsers.length
    end

    def quitAll()
        puts "== Quit All =="
        @browsers.each do |id, b|
            puts "close #{id}"
            b.close
        end
    end

end
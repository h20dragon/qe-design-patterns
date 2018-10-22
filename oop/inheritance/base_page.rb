



class BasePage

  attr_accessor :title
  attr_accessor :driver

  def initialize(drv)
    @title = ""
    @url = ""
    @drv = drv
  end

  def getElement(locator)
    @driver.find(..)
  end

  def getTitle()
    @driver.title
  end

  def loadPage(url)
    @driver.get(url)
  end

end




class BasePage

  attr_accessor :title
  attr_accessor :driver

  def initialize(drv)
    @title = ""
    @url = ""
    @drv = drv
  end

  def getElement(locator)
    puts "@driver.find()"
  end

  def getTitle()
    @driver.title
  end

  def loadPage(url)
    @url=url
    @driver.get(@url)
    getTitle()
  end

  def click(locator)
    @driver.click(locator)
    getTitle()
  end


  def enterText(locator, text)
    getElement(locator).sendKeys(text) 
    return getElement(locator).getText()
  end

end

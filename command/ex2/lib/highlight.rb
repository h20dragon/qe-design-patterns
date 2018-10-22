

require "command"

class Highlight < Command

  def initialize(drv, locator)
    super(drv)
    @locator = locator
  end

  def execute()
    @element = @drv.find_element( @locator )
    @element.click()
  end


end
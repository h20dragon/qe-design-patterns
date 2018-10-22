

require "command"

class LoadUrl < Command

  def initialize(drv, url)
    super(drv)
    @url = url
  end

  def execute()
    @drv.get(@url)
  end


end
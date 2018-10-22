
require 'base_page'

class SignupPage < BasePage

  def initialize(driver)
    super
  end

  def load()
    loadPage('https://www.softwaretestpro.com/subscribe-to-stp/')
  end

  def signup(username, password)
    first_name = getElement()
    last_name = getElement()

    first_name.sendKeys("Elvis")
    last_name.sendKeys("Presley")
  end

end
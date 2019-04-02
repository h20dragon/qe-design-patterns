
require 'base_page'

class SignupPage < BasePage

  def initialize(driver)
    super
    @userNameElement={:id => 'user'}
    @passwdElement={:name => 'pass'}
    @okButton={:xpath => '//*[text="Submit"]'}
  end

  def load()
    loadPage('https://www.softwaretestpro.com/subscribe-to-stp/')
  end

  def signup(username, password)
    first_name = enterText(@userNameElement, "Elvis")
    last_name = enterText(@passwdElement, "Graceland")

    click(@okButton)
  end

end

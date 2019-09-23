#
# Composition Pattern
#
# 1. Common Interface or base class for all of your objects (e.g. Component)
# 2. One or more leaf classes.
# 3. At least one higher-level class (e.g. Composite) - a component.
#    It's built from subcomponents.
##
require 'rubygems'
require_relative 'Task'
require_relative 'WebComponent'
require_relative 'CompositeTask'


# Any page
class Page < CompositeTask

  attr_accessor :root   # The head page (or component)
  attr_reader   :verbose

  def initialize(name)
    super(name)

    @verbose=false
    
    # Define the Header
    header=CompositeTask.new('Header')
    home_lnk=WebComponent.new('link:Home')
    home_lnk.set_xpath('//div[@name="header"]')
    
    header.addComponent(home_lnk)
    header.addComponent(WebComponent.new('Settings').set_xpath('//link[@text()="practice_settings"]'))
    header.addComponent(WebComponent.new('Logout').set_id('logout'))

#   header.child('WebComponent:link:Settings')
    _child=header.get_child('Settings')

    puts "Search Web:link:Settings : #{_child != nil}" if ENV['DEBUG']

    puts __FILE__ + (__LINE__).to_s + header.getChild('Settings').class.to_s
          
    # Define Footer
    footer=CompositeTask.new('Footer')
    footer.add_sub_task(WebComponent.new('image').set_xpath('//img[text()="logo"]'))
      
    footer2=CompositeTask.new('Footer II')
    footer2.add_sub_task(WebComponent.new('img2').setLocator('css=.div>>span>ok'))
    footer2.add_sub_task(WebComponent.new('img3').set_xpath('//img[@text="image3"]').set_id('elvis'))
      
    footer3=CompositeTask.new('Footer III')
    footer3.add_sub_task(WebComponent.new('link3'))
    footer3.add_sub_task(WebComponent.new('link3a'))
        
    footer.add_sub_task(footer2)
    footer2.add_sub_task(footer3)
      # puts "Class => " + _x.class().to_s
      # .add_sub_task(WebComponent.new('image2'))
    
    # Define page/component root
    @root=CompositeTask.new(name)
    @root.add_sub_task(header)
    @root.add_sub_task(footer)

    if @verbose
      puts '-' * 72
      @root.print

      puts "patient_pg.Parents : #{@root.get_parents}"
      puts "footer.parents : #{footer.get_parents}"
      puts "footer2.parents : #{footer2.get_parents}"
      puts "footer3.parents : #{footer3.get_parents}"
    end

  end

  def dump()
    puts "[dump]: #{@name}"
    puts '-'  * 72
    @root.print
    puts '_'  * 72
  end

  def get(id)
    @root.getChild(id)
  end
end


#
# MAIN
#
loginPage=Page.new('Login')
loginPage.dump()

loginPage.get("Header").print

footer = loginPage.get("Footer")
puts "Footer => #{footer.class.to_s}"
img = footer.getChild("image")
puts "Img: #{img.class.to_s} : #{img.locator}"

logout = loginPage.get("Header").getChild("Logout")
puts "Logout link: #{logout.locator}"
puts "Logout's Parent: " + logout.parent.getName()

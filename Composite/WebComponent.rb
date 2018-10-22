require_relative 'Task'

# Leaf Classes (Component)
class WebComponent < Task
  attr_accessor :name, :id, :xpath
  attr_accessor :parent
  attr_accessor :locator
    
  def initialize(name)
    @debug = ENV['DEBUG']
    @name=name
    @xpath=nil
  #  super("WebComponent:#{@name}")
    super(@name)
  end
  def parent()
    @parent
  end

  def set_parent(parent)
    puts __FILE__ + (__LINE__).to_s + " WebComponent::set_parent" if @debug
    @parent=parent
  end
  
  def get_name
    @name
  end
  
  def set_id(id)
    @id=id
    @locator={:id => @id}
    self
  end
  
  def set_name(name)
    @name=name
    @locator = {:name => @name}
    self
  end

  def setLocator(s)
    @locator=s
    self
  end
  
  def set_xpath(xpath)
    @xpath=xpath
    @locator={:xpath => @xpath}
    self
  end

  def locator()
    @locator
  end
  
  def get_time_required
    2.5
  end  

  def total_number_basic_tasks
    3
  end  

  def child(name)
    if name == @name
      puts __FILE__ + (__LINE__).to_s + "Matched #{name} (#{@name})" if @debug
      return self
    end
    
    puts __FILE__ + (__LINE__).to_s + "No match #{name} (#{@name})" if @debug
    nil
  end
    
  def print
    puts "[WebComponent]:[Parent:#{parent.name}]:#{@name} => #{@locator.to_s}"
  end
    
end # WebComponent 

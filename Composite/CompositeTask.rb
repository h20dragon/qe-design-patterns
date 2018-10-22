require_relative 'Task'

class CompositeTask < Task
  attr_accessor :name
  attr_accessor :full_path
  attr_accessor :parent
    
  def initialize(name)
    super(name)
    @verbose = ENV['DEBUG']
    @name=name
    @sub_tasks=[]
    @full_path = @name
    @parent=nil
  end

  def get_name
    @name
  end

  def getName
    get_name
  end
  
  def get_parent
    @parent
  end
  
  def get_parents
    _parents=""
    _parents=@parent.get_name if @parent
    
    _p=@parent
    while _p && _p.get_parent do
      _parents = "#{_p.get_parent.get_name} => " + _parents
      _p=_p.get_parent
    end
    
    _parents
  end
  
  def set_parent(parent)
    puts __FILE__ + (__LINE__).to_s + " CompositeTask::set_parent" if @verbose
    @parent=parent
  end  
    
  def add_sub_task(task)
    @sub_tasks << task
    task.set_parent(self)
    task    
  end

  def addComponent(task)
    add_sub_task(task)
  end
  
  def remove_sub_task(task)
    @sub_tasks.delete(task)    
  end
  
  def get_time_required
    time=0.0
    @sub_tasks.each { |task| time += task.get_time_required }    
  end

  def print
    @sub_tasks.each { |task|
      puts __FILE__ + (__LINE__).to_s + " #{task.get_name.to_s}" if @verbose
      task.print
    }
  end


  def getChild(n)
    _child=nil

    @sub_tasks.each { |task|
      puts __FILE__ + (__LINE__).to_s + " task=> #{task.class.to_s} : #{task.getName}" if @verbose

      if task.get_name==n
        puts __FILE__ + (__LINE__).to_s + " Found => Name:#{task.name}" if @verbose
        _child=task
      end
    }
    _child
  end

  def child(name)
    if @verbose
      puts __FILE__ + (__LINE__).to_s + " [search child]:#{name}"
      puts "size: #{@sub_tasks.size.to_s}"
    end

    _child=nil
    
    @sub_tasks.each { |task|
      puts __FILE__ + (__LINE__).to_s + " task=> #{task.class.to_s}" if @verbose
      _c=task.child(name)
      if _c
         puts __FILE__ + (__LINE__).to_s + " Found => Name:#{_c.name}" if @verbose
         _child=_c
      end
    }
    _child
  end
    
  def get_child(name)
    _c=child(name)

    if _c && @verbose
      puts __FILE__ + (__LINE__).to_s + " FOUND => " + _c.name
    end

    _c
  end
  
  # Any one of hose subtasks could itself be a huge composite with many
  # of its own sub-subtasks.
  def total_number_basic_tasks
    total=0
    @sub_tasks.each { |task| total += task.total_number_basic_tasks }
    total    
  end
    
end

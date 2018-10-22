
require 'command'

class Commands

  def initialize
    @commands = []
  end

  def add(c)
    @commands << c
  end

  def execute
    @commands.each do |cmd|
      cmd.execute()
    end


  end
end
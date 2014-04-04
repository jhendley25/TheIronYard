require "./hero.rb"
require "./villian.rb"

class Horse
  attr_accessor :name, :position

  def initialize(name)
    @name = name
    position = 0
  end
  
  def move_forward
    @position += rand(4)
  end

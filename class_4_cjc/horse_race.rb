require "./hero.rb"
require "./villian.rb"
require "./horse.rb"


 attr_accessor :name, :position

  def initialize(name)
    @name = name
    position = 0
  end
  
  def move_forward
    @position += rand(4)
  end
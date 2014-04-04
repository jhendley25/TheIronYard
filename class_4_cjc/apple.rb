class Apple
  attr_accessor :name
  attr_accessor :color

  # attr_reader :name
  # attr_reader :color
  # attr_writer :name
  # attr_wrtier :color

  # Constructor <-- when initializeing a new class constructor
    def initialize
      puts "Initialize method!"
      @name = ""
      @color = ""
    end

#     # Getter method like reading 
#     def name
#       puts "Getter method!"
#       # The last line of code in a function/method is returned
#       @name
#     end

#     def color
#       puts "Getter method!"
#       @color
#     end

#     # Setter method like writing
#     def name=(value)
#       puts "Setter method!"
#       @name = value
#     end

#     def color= (value)
#       puts " Setter method!"
#       @color = value
#     end

end
module Sizeble
  def size
    p "Huge!"
  end
end

class Vehicle
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize
    @@number_of_vehicles += 1
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  attr_accessor :color
  attr_reader :year

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
	end

	def speed_up(speed)
    	@current_speed += speed
  	end

  	def brake(speed)
    	@current_sp
      eed -= speed
  	end

  def current_speed
    puts "You speed is #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
  end

  def spray_paint(color)
    self.color = color
  end

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

class MyTruck < Vehicle
  include Sizeble

  NUMBER_OF_DOORS = 2
end

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
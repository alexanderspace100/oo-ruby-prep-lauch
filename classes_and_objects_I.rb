class MyCar
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
    	@current_speed -= speed
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
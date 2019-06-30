class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@count = 0
  attr_reader :count
  def initialize()
    @@count += 1
  end

  def self.instances
    @@count
  end

  def engine_start
    puts "¡El motor se ha encendido!"
  end
end

10.times do 
  Car.new
end

puts Car.instances
puts Car.new.engine_start

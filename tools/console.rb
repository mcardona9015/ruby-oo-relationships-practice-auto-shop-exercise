require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = CarOwner.new("John")
tom = CarOwner.new("Tom")

car_fixer = Mechanic.new("Joe", "Tires")
cars_r_us = Mechanic.new("Steve", "Race Cars")

toyota = Car.new(john, car_fixer, "make1", "model1", "4 wheel drive")
mcclaren = Car.new(tom, cars_r_us, "make2", "model2", "Super Car")
honda = Car.new(john, cars_r_us, "make3", "model3", "Minivan")

binding.pry
#test
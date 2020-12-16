class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car_inst| car_inst.car_owner == self}
  end

  def mechanics
    self.cars.map(&:mechanic).uniq
  end

  def self.average_number_of_cars
    total_cars = Car.all.count.to_f
    total_cars / self.all.count 
  end


end

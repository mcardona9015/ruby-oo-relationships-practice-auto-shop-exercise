class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select {|car_inst| car_inst.mechanic == self}
end

def car_owners
  self.cars.map(&:car_owner).uniq
end

def car_owners_names
  self.car_owners.map(&:name)
end


end

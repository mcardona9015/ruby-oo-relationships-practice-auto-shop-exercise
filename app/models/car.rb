class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  @@all = []

  def initialize(car_owner, mechanic, make, model, classification)
    @car_owner = car_owner
    @mechanic = mechanic
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map(&:classification).uniq
  end

  def self.find_mechanics(classification)
    self.all.select {|car_inst| car_inst.classification == classification}.map(&:mechanic)
  end


end

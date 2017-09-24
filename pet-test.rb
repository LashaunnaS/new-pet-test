require 'pry'

class Pet
  attr_accessor :name, :owner
  @@all = []

  def initialize(name, owner)
    @name, @owner = name, owner
    @@all << self
  end

  def self.all
    @@all
  end
end

class Owner
  attr_accessor :name, :pets
  @@all = []

  def initialize(name)
    @name = name
    @pets = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_pet(name)
    new_pet = Pet.new(name, self)
    @pets << new_pet
  end
end

binding.pry

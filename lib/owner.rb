require 'pry'
# require_relative
class Owner
  # code goes here

  attr_reader :species, :name
  attr_accessor 

  @@all = []
  @@count = 0

  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{@species}."
  end

  def self.reset_all
    #clear every out from the array
    @@all.clear
    @@count = 0
  end

  def cats
    Cat.all
    binding.pry
  end
end
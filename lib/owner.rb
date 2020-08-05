require 'pry'
# require_relative
class Owner
  # code goes here

  attr_reader :species, :name
  attr_accessor 
#define an instance 
# Jason = Owner.new("Jason")
#Jason.cats = #jason"s cats not all the cats

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
    # cat_arr = []
    # Cat.all.each{|cat|
    #   if 
    #     cat.owner.name == @name
    #     cat_arr << cat
    #   end
    #   # binding.pry
    # }
    # cat_arr
    Cat.all.select{|cat|
      cat.owner == self
      # binding.pry
    }
  end

  def dogs
    Dog.all.select{|dog|
      dog.owner == self
      binding.pry
    }
  end
end

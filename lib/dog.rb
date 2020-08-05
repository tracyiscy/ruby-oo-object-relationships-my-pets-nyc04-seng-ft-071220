require 'pry'

class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
  end

  def self.all
    @@all
  end
  
end
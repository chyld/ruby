require 'pry'

class Dog
  attr_accessor :name

  def initialize(n)
    @name = n
  end

  def to_s
    "#{name} is a dog!  he likes to go woof!"
  end
end

class Person
  attr_accessor :name, :gender, :dogs

  def initialize(n, g)
    @name = n
    @gender = g
    @dogs = []
  end

  def to_s
    "#{name} is a #{gender}"
  end
end

binding.pry

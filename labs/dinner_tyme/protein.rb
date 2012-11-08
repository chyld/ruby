load 'food.rb'

class Protein < Food
  attr_accessor :animal_type

  def initialize(animal, calories, servings, prep)
    @animal_type = animal
    super(calories, servings, prep)
  end
end

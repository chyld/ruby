load 'food.rb'

class Carb < Food
  attr_accessor :grain_type

  def initialize(grain, calories, servings, prep)
    @grain_type = grain
    super(calories, servings, prep)
  end
end

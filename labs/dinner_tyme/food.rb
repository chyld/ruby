class Food
  attr_accessor :calories_per_serving, :number_of_servings, :prep_time

  def initialize(calories, servings, prep)
    @calories_per_serving = calories
    @number_of_servings = servings
    @prep_time = prep
  end
end

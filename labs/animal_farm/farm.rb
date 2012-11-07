class Farm
  attr_accessor :name, :animals, :people

  def initialize(n)
    @name = n
    @animals = []
    @people = []
  end

  def to_s
    "#{name}'s farm"
  end
end

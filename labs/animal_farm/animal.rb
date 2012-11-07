class Animal
  attr_accessor :name, :gender, :species

  def initialize(n, g, s)
    @name = n
    @gender = g
    @species = s
  end

  def to_s
    "#{name} is a #{gender} #{species}"
  end
end

class Person
  attr_accessor :name, :type, :menus

  def initialize(name, type)
    @name = name
    @type = type
    @menus = []
  end
end

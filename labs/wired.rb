require 'pry'
require 'active_support/all'

class Wire
  attr_accessor :points
  def initialize
    @points = 10.times.map { Point.new }
  end
  def distance(p1, p2)
    Math.sqrt(((p1.x - p2.x)**2) + ((p1.y - p2.y)**2))
  end
  def length
    (points.length - 1).times.map {|x| distance(points[x], points[x+1])}.inject(&:+)
  end
  def to_s
    "This wire is of length #{length}"
  end
end

class Point
  attr_accessor :x, :y
  def initialize
    @x = Random.rand(1000)
    @y = Random.rand(1000)
  end
end

puts Wire.new

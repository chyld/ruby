require 'test/unit'

class Mathematics
  def self.factorial(x)
    (1..x).inject(&:*)
  end
end

class MyTest < Test::Unit::TestCase
  def test_simple
    assert_equal(1, 1)
  end

  def test_addition
    x = 3 + 5
    assert_equal(8, x, "should be an 8")
  end

  def test_factorial
    x = Mathematics.factorial(5)
    assert_equal(120, x, "your code needs fixing")
  end
end

#module Test
#  module Unit
#    class TestCase
#    end
#    class ClassA
#    end
#  end
#end

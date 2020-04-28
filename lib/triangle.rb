require 'pry'
class Triangle


  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3].sort
    error_tests
  end

  def kind

    case @sides.uniq.size
    when 1 then :equilateral
    when 2 then :isosceles
    else        :scalene
    end
    
  end
  
  
  
  
  
  class TriangleError < StandardError
  end
  
  private
  def error_tests
    if @sides.any? {|side| side <= 0}
      raise TriangleError
    end
  
    if @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError
    end
  
  end

end


class Triangle
  def initialize(length1, length2, length3)
    @triangle_sides = []
    @triangle_sides << length1
    @triangle_sides << length2
    @triangle_sides << length3
  end

  def triangle?
    sum_one_two = @triangle_sides[0] + @triangle_sides[1]
    sum_two_three = @triangle_sides[1] + @triangle_sides[2]
    sum_one_three = @triangle_sides[0] + @triangle_sides[2]

    if (@triangle_sides.none? {|side| side <= 0}) &&
      (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0])
      return true
    else
      return false
    end
  end

  def kind
    if triangle?
      if @triangle_sides.uniq.length == 1
        return :equilateral
      elsif @triangle_sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
end
  
end


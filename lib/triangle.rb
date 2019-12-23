class Triangle
  # triangle code

def initialize (side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end

def is_a_triangle
  is_triangle = nil
  is_triangle = true if (@side1 > 0) && (@side2 > 0) && (@side3 > 0)
  if (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
    is_triangle = false
  end
   return is_triangle
end



def kind
  
kind_of_triangle = nil

unless is_a_triangle == true
  raise TriangleError
else
  if (@side1 == @side2) && (@side1 == @side3)
    kind_of_triangle = :equilateral
  elsif (@side1 == @side2) || (@side1 == @side3) || (@side2 == @side3)
    kind_of_triangle = :isosceles
  elsif
  (@side1 != @side2) || (@side1 != @side3) || (@side2 != @side3)
  kind_of_triangle = :scalene
  end
end
return kind_of_triangle
end

  class TriangleError < StandardError
    def message
      puts "shape is not a triangle!"
  end
end
end
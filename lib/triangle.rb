require 'pry'
class Triangle

attr_accessor :side_1, :side_2, :side_3

    def initialize(side_1, side_2, side_3)
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
    end

    def kind
      # should raise a custom error
      # how do I raise a customer error?
      # what makes a triangle equal on all sides?


      # if my_condition?
      # do_something
      # end
      # And define the method:<--------------------try this logic to abstract
      #
      # def my_condition?
      # some.long.method && other_condition && another_condition
      # end


      if @side_1 == 0 && @side_2 == 0 && @side_3 == 0
        raise TriangleError
      elsif
        @side_1 < 0 || @side_2 < 0 || @side_3 < 0
        raise TriangleError
      elsif
        @side_1 + @side_2 <= @side_3 || @side_3 + @side_2 <= @side_1 || @side_3 + @side_1 <= @side_2
        raise TriangleError
      elsif
        @side_3 == @side_2 && @side_3 == @side_1
        :equilateral
      elsif
      #  @side_2 == @side_3 && @side_3 != @side_1 || @side_1 == @side_3 && @side_3 != @side_2 || @side_1 == @side_2 && @side_2 != @side_3
      @side_1 == @side_3 || @side_1 == @side_2 || @side_2 == @side_3
      #  binding.pry
        :isosceles
      elsif
        @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_1 && @side_2 != @side_3
        :scalene
      elsif
        @side_1 == 0 && @side_2 == 0 && @side_3 == 0
        # how do I raise an error?

        raise TriangleError

      end

    end

    class TriangleError < StandardError

    end

end

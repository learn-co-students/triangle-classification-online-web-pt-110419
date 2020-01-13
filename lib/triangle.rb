class Triangle
  # write code here
  attr_accessor :len1, :len2, :len3 , :allin
  def initialize(len1,len2,len3)
    @len1 = len1 
    @len2 = len2 
    @len3 = len3
    @allin = [len1,len2,len3]
  end 
  
  
  def kind 
    sum = @len1 +@len2 + @len3 
    if @allin.all? {|a| a >0} == false  
      raise TriangleError
       
       
    elsif @allin.all? {|a| a*2 < sum} == false 
       raise TriangleError 
    
    
    
    end 
    
    
    
    if  @len1 ==@len2 && @len2 == @len3 
      return :equilateral
    end 
    
    if @allin == @allin.uniq
      return :scalene
    end 
    
      return :isosceles
    
     
  end 
  
  
  class TriangleError < StandardError
    
  end 
end

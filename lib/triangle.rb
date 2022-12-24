# require 'pry'

class Triangle
  # write code here

  attr_reader :a, :b, :c
  attr_accessor :a, :b, :c

  def initialize(a, b, c)

    if a >= (b + c) || b >= (a + c) || c >= (a + b)
      raise TriangleError
    end

    # if a <= 0 || b <= 0 ||c <= 0
    #   raise TriangleError
    # end

    # if a == nil || b == nil ||c == nil
    #   raise TriangleError
    # end
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == b && b == c && c == a && a > 0 && b > 0 && c > 0
      return :equilateral
    elsif a == b && b != c || a == c && b != c || b == c && a != c && a > 0 && b > 0 && c > 0
      return :isosceles
    elsif a != b && b != c && c != a && a > 0 && b > 0 && c > 0
      return :scalene
    # else 
    #   # a == 0 && b == 0 && c == 0
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     puts error.message
    #   end
    # elsif a < 0 && b < 0 && c < 0
    #   begin 
    #     raise TriangleError
    #   rescue TriangleError => error
    #     puts error.mess
    #   end
      

    end
  end
  
  # end
  
  # def isosceles?
  #   if a == b && b != c || a == c && b != c || b == c && a != c 
  #     return ":isosceles"
  #   end
  # end
  
  # def scalene?
  #   if a != b && b != c && c != a
  #     return ":scalene"
  #   end
  # end
  
  class TriangleError < StandardError
    
    def message
      "Triangle with no sizes"
    end
    
    # def mess
    #   "Triangle is negative"
    # end
  end
end
  
  # binding.pry
  
  # fido = Triangle.new(2, 2, 2)
  fido = Triangle.new(3, 4, 5)
  # fido = Triangle.new(3, 4, 4)
# fido = Triangle.new(-2, -2, -2)
# fido = Triangle.new(0, 2, 2)

puts fido.kind
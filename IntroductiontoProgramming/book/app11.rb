age = 17
puts "False" if age < 18

p "A".ord
p "a".ord

#require_relative 'app10'

begin 
  puts 10 / 0 
rescue 
  puts "You caused an error!" 
end 


class User

  def say_secret_with_self
    self.secret
  end

  protected

  def secret
    "secret"
  end
end

u = User.new
u.say_secret_with_self # => "secret"


arr = (1..10).to_a
b = arr.select { |i| i.even? }
p b



def per_squ(side)
	side * 4
end

p per_squ(5)


def are_squ(side)
	side * side
end

p are_squ(5)

def per_tri(side1, side2, side3)
	side1 + side2 + side3
end

p per_tri(3,4,10)


class Square
	def initialize(length)
		@length = length
	end

	def area
		@length * @length
	end

	def perimeter
		@length * 4
	end
end

square = Square.new(18)
p square.area
p square.perimeter


class Triangle
	def initialize(base_width, height, side1, side2, side3)
		@base_width = base_width
		@height     = height
		@side1      = side1
		@side2      = side2
		@side3      = side3
	end

	def area
		@base_width * @height
	end

	def perimeter
		@side1 + @side2 + @side3
	end
end

tri = Triangle.new(10, 20 , 10.9, 17.4, 4.93)
p tri.area
p tri.perimeter


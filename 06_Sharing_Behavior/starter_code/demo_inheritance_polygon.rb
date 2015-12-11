class Polygon
	attr_accessor :len_sides

	def initialize(len_sides)
		@len_sides = len_sides #array storing the length of each side
	end

	def num_sides()
		@len_sides.length
	end

	def is_regular()
		#check if all sides are the same length
		return @len_sides.uniq().empty?
	end

	def to_s()
		"This is a #{self.class} with #{num_sides()} sides."
	end
end


class Rectangle < Polygon

	attr_accessor :length, :width

	def initialize(length, width)
		@length = length
		@width = width
		super([length, width, length, width])
		#super calls the parent class methods like calling Polygon.new
	end

	def area ()
		return @length * @width
	end

	def to_s () #using super here calls the parent class to_s method
		#super() returns "This is a #{self.class} with #{num_sides()} sides."
		super() + " It's length and width are #{@length}, #{@width}."
	end
end


class Square < Rectangle
	def initialize(side)
		super(side, side)
	end
end

#Overriding idea that the subclass can over ride parent method
#Child inherits the Parent's method
#super calls the Parent methods

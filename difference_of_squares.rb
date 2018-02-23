class Squares
	@number=0
	def initialize(number)
		@number=number
	end
	def sum_of_squares
		@squareSum=0
		@counter=1
		while @counter <= @number  do
			@squareSum+=(@counter * @counter)	
			@counter+=1
		end

		#puts "Total sum:::#{@squareSum}"
		return @squareSum
	end


	def square_of_sum
		@sumSquare=0
		@counter=1
		while @counter <= @number  do
			@sumSquare+=@counter
			@counter+=1
		end
		@sumSquare=@sumSquare * @sumSquare 

		#puts "Total sum:::#{@sumSquare}"
		return @sumSquare
	end

	def difference
		return self.square_of_sum - self.sum_of_squares
	end

end


module BookKeeping
	VERSION=4
end

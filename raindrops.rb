class Raindrops
	def self.convert (input)
		#puts "Input number received:::#{input}"

		#Verifying the conditions
		@output=""
		if input%3==0
			@output+="Pling"
		end

		if input%5==0
			@output+="Plang"
		end

		if input%7==0
			@output+="Plong"
		end

		if @output.length ==0
			return input.to_s
		else
			return @output
		end

	end
end

module BookKeeping
	VERSION=3
end
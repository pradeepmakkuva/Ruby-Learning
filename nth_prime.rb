class Prime
	def self.nth input
		if input <=0
			throw raise ArgumentError.new
			return -1

		else
			@primeCounter=0
			@counter=2
			loop do 
				#puts "counter:::#{@counter}"
				if isPrime @counter
					@primeCounter+=1
				end

				if @primeCounter == input
					return @counter
				end
				@counter+=1
			end
		end
	end


	def self.isPrime num
		@start=1
		@flag=true
		for counter in @start+1 .. num-1
			if num%counter ==0
				@flag=false
				break
			end
		end
		return @flag
	end
end

module BookKeeping
	VERSION=1
end


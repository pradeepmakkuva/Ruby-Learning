class Sieve
	def initialize max
		@max=max
		@inputArray=(2 .. max).to_a
	end

	def primes
		for outer in 0 ... @inputArray.length
			for inner in outer+1 ... @inputArray.length
				if @inputArray[inner] and @inputArray[outer] and @inputArray[inner]% @inputArray[outer] ==0
					@inputArray[inner]=nil
				end
			end
		end
		@inputArray=@inputArray.compact
	end
end

module BookKeeping
	VERSION=1
end

=begin
s=Sieve.new(1000)
@output=s.primes
puts "#{@output}"
=end
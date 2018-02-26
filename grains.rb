class Grains
	def self.square num
		if num <= 0  or num >64
			#puts "Given input is out of conditions"
			throw raise ArgumentError.new 
		else
			#puts "Entered into else condition"
			return 2**(num-1)
		end
	end

	def self.total 
		return (1-2**64)/(1-2)
	end
end

=begin
result=Grains.square 2
total=Grains.total 
puts "The result is:::#{result}"
puts "The total:::#{total}"
=end

module BookKeeping
	VERSION=1
end
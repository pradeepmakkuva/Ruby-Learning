class Gigasecond
	def self.from (inputTime)
		puts "Input time received:::#{inputTime}"

		#Adding the required number of seconds(Giga seconds)
		inputTime=inputTime+1000000000
		puts "After conversion:::input time is:::#{inputTime}"

		return inputTime
	end
end


module BookKeeping
	VERSION=6
end
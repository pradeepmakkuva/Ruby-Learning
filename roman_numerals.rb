

module RomanModule
	@@romanNums=Hash["M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90, "L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1]

	def self.calc input
		@roman=""
		@@romanNums.each do |key, value|
    			@roman += key * (input / value)
     			input = input % value
		end
		return @roman
	end  
end

class Fixnum
	def to_roman
		RomanModule.calc(self)
	end
end


module BookKeeping
	VERSION=2
end
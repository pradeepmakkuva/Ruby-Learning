class Year
	def self.leap? year
		if (year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
			return true
		else
			return false
		end
	end
end

module BookKeeping
	VERSION=3
end



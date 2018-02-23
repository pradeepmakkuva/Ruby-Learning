class Pangram
	def self.pangram? (phrase)
		phrase=phrase.downcase

		@flag=true
		if phrase and phrase.length > 0
			('a'..'z').each do |letter|
				if ! phrase.include? letter
					@flag=false
					break;
				end
			end
		else
			@flag=false
		end

		return @flag
		
	end
end


module BookKeeping
	VERSION=6
end





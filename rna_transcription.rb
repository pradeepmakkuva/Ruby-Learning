class Complement
	#Declaring the complementories in the hashmap
	@inputHash=Hash["G" => "C", "C" => "G","T" => "A", "A" => "U"]

	def self.of_dna (input)
		puts "Input received::::#{input}"

		#Looping the number of lettres in the input
		#and adding its RNA by based on the 
		#complementories configured
		@rna=""
		for count in 0 ... input.length

			#Checking for the not configured
			#complementories
			puts "Input key:::#{input[count]}"
			puts "Complementory key::::#{@inputHash.has_key? (input[count]) }"

			if @inputHash.has_key? (input[count])
				@rna+=@inputHash[input[count]]
			else
				return ""
			end


		end
		return @rna
	end
end


module BookKeeping
	VERSION=4
end
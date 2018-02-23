class Hamming
	def self.compute (input1, input2)
		#puts "Input-1 is:::#{input1}"
		#puts "Input-2 is:::#{input2}"

		#Verifying whether the  nullify of the inputs
		if input1 or input2

			if input1.length == input2.length

				#Rotating the loop  according to the calculated length
				@hammingCnt=0
				for count in 0 .. input1.length
					if input1[count]!=input2[count]
						@hammingCnt+=1
					end
				end
				#puts "The hamming count:::#{@hammingCnt}"
				return @hammingCnt
			else
				throw raise ArgumentError.new
			end

		else
			#puts "One of the object is null"
			return 0
		end
	end
end

module BookKeeping
	VERSION=3
end


#hammingCnt=Hamming.compute('', '')
#puts "Hamming count:::#{hammingCnt}"
class Phrase
	def initialize sentence
		@sentence=sentence
	end

	def word_count
		@sentence=@sentence.downcase.gsub(/[^0-9A-Za-z' ]/,' ').gsub(/( '|' )/, ' ')
		@senArray=@sentence.scan(/\S+/).to_a;

		@hash=Hash.new
		for counter in 0 ... @senArray.length
			if @hash.has_key? @senArray[counter]
				@hash[@senArray[counter]]=@hash[@senArray[counter]]+1
			else
				@hash[@senArray[counter]]=1
			end
		end
		return @hash
	end
end


module BookKeeping
	VERSION=1
end

=begin
p=Phrase.new "First: don't laugh. Then: don't cry."
p.word_count

p=Phrase.new "Joe can't tell between 'large' and large."
p.word_count
=end
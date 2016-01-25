class Book
	attr_reader :title

	def title=(name)
		short =["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "nor"]
		words = name.split(" ")
		words[0].capitalize!
		words[1..-1].map do |w| 
			if short.include? w
				w
			else
				w.capitalize!
			end
		end
		@title = words.join(" ")		
	end

end


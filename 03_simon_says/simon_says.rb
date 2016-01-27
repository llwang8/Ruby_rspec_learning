#needs Rspec testing to pass

	def echo(msg)
		msg
	end


	def shout(msg)
		msg.upcase
	end

	def repeat(msg, n=2)
		str = []
		n.times {str << msg}
		return str.join(" ")
	end

	def start_of_word(msg, n)
		result = ""
		if msg == " "
			result
		else
			result = msg.slice(0..n-1)
		end
	end

	def first_word(msg)
		if msg != " "
			msg.split(" ")[0]
		else
			nil
		end
	end

	def titleize(msg)
		short = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "nor", "over" ]

		if msg == nil
			nil
		else
			words = []
			words = msg.split(" ")
			words.map do |word|
				short.include?(word) ? word : word.capitalize!
			end
			words.first.capitalize!
			words.join(" ")
		end
	end


	





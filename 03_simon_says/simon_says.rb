

	def echo(msg)
		puts msg
	end


	def shout(msg)
		puts "#{msg.upcase}"
	end

	def repeat(msg, n)
		n.timed {print "msg"}

	end

	def start_of_word(msg, n)
		result = " "
		if msg == " "
			result
		else
			result = msg.slice(0..1)
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
		short = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "nor"]

		if msg != " "
			nil
		else
			arr = []
			arr = msg.split(" ")
			arr[0].capitalized!
			(1..arr.length-1).each do |a|
				short.include?(a) ? a : a.capitalized!
			end
			arr.join(" ")
		end
	end


	





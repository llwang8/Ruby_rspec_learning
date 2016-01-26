class Dictionary

	def entries 
		@entries ||= {}
	end

	def add(name, value=nil)
		@entries[name] = value
	end

	def keywords
		@entries.keys.sort
	end

	def include?(word)
		@entries.keys.include?(word)
	end

	def find(pword)
		result = {}
		entries.each_pair do |key, definition|
			if key =~ /^#{pword}/
				result[key] = definition
			end
		end
		result
	end

	def printalbe
		entries.map do |key_val|
			%Q{[#{key_val.first}] "#{key_val.last}"}
		end.sort.join("\n")
	end
end


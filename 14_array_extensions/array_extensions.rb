class Array

	def sum
	#	arr.inject(0, :+) do  |sum, a| 
	#		sum + a 
	#	end
		result = 0
		self.each do |num|
			result += num
		end
		result
	end

	def square
		#if arr.empty
		#	[]
		#else
			map {|a| a ** 2}
		#end
	end

	def square!
		map! {|a| a ** 2}
	end

end


#puts Array.new.sum([1,2,4])


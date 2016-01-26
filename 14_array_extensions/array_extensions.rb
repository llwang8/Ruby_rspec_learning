class Array

	def sum(*arr)
		arr.inject(0, :+) {|sum, a| sum + a}
	end

	def square(arr)
		if arr.empty
			[]
		else
			arr.map {|a| a ** 2}
		end
	end

	def square(arr)!
		arr.map! {|a| a ** 2}
	end

end




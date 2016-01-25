class Friend
	def greeting(name = nil)
		if !name
			"Hello!"
		else
			"Hello, #{name}!"
			#{}"Hello, " + name + "!"
		end
	end

end
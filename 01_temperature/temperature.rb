#class Temperature
 #def temperature_conversion 
	def ftoc(f)
		(f.to_f - 32)* 5 / 9 
	end

	def ctof(c)
		c.to_f * 9 / 5 + 32
	end
#end

class Temperature
	attr_accessor :degree_fahrenhait, :degree_celsius
	
	def self.from_celsius degree_celsius
		new(:c => degree_celsius)
	end

	def self.from_fahrenheit degree_fahrenhait
		new(:f => degree_fahrenhait)
	end

	def initialized (h)
		#if h.length == 1 && h.first.is_a? (Hash)
			@degree_fahrenhait = option[:f] || option[:c] * (9.0/5.0) + 32
			@degree_celsius = hash[:c] || (option[:f] - 32.0) * (5.0 / 9.0)
		#end
	end


	def in_fahrenhait(thash)
		@degree_fahrenhait = option[:f] || ctof(option[:c])

	end

	def in_celsius(thash)
		@degree_celsius = option[:c] || ftoc(option[:f])
	end

	def ftoc(f)
  		(f-32.0) * (5.0/9.0)
	end

	def ctof(c)
  		c * (9.0/5.0) + 32
	end
end

class Celsius < Temperature
	def initialize(c)
		super(:c => c)
	end
end

class Fahrenheit < Temperature
	def initialize(f)
		super(:f => f)
	end
end




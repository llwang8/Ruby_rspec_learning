class Temperature
	attr_accessor :degree_fahrenhait, :degree_celsius

	def initialize(options={})
		if options(:f)
			@degree_fahrenhait = options[:f] 
		elsif options(:c)
			@degree_celsius = options[:c] 
		end
	end

	def self.from_celsius degree_celsius
		new(:c => degree_celsius)
	end

	def self.from_fahrenheit degree_fahrenhait
		new(:f => degree_fahrenhait)
	end

	def in_fahrenhait(thash)
		puts @degree_fahrenhait = thash[:f] || ctof(thash[:c])
	end

	def in_celsius(thash)
		puts @degree_celsius = thash[:c] || ftoc(thash[:f])
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

Temperature.new(:f=> 50).in_fahrenhait
Temperature.new({:f=> 32}).in_celsius
Temperature.new({:c=> 50}).in_fahrenhait
Temperature.new({:c=> 0}).in_celsius



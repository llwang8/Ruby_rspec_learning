class Temperature
	attr_accessor :degree_fahrenheit, :degree_celsius

	def initialize(arg={})
		@options = arg
		@degree_fahrenheit = @options[:f] if @options[:f]
		@degree_celsius = @options[:c] if @options[:c]
	end

	def self.from_celsius degree_celsius
		new(:c => degree_celsius)
	end

	def self.from_fahrenheit degree_fahrenheit
		new(:f => degree_fahrenheit)
	end

	def in_fahrenheit
		@degree_fahrenheit = degree_fahrenheit || ctof(degree_celsius)
	end

	def in_celsius
		@degree_celsius = degree_celsius || ftoc(degree_fahrenheit)
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

#Temperature.new(:f=> 50).in_fahrenheit
#Temperature.new({:f=> 32}).in_celsius
#Temperature.new({:c=> 50}).in_fahrenheit
#Temperature.new({:c=> 0}).in_celsius



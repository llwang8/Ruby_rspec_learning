class RPNCalculator
	attr_accessor :calculator

	def initialize
		@calculator = [0]
	end

	def value
		return calculator[-1]
	end

	def push(value)
		calculator.push(value.to_f)
	end

	def plus
		x = calculator.pop
		y = calculator.pop
		raise "calculator is empty" if x.nil? || y.nil?
		calculator.push(y+x)
		
	end	

	def minus
		x = calculator.pop
		y = calculator.pop
		raise "calculator is empty" if x.nil? || y.nil?
		calculator.push(y-x)
	end

	def times
		x = calculator.pop
		y = calculator.pop
		raise "calculator is empty" if x.nil? || y.nil?
		calculator.push(y*x)
	end

	def divide
		x = calculator.pop
		y = calculator.pop
		raise "calculator is empty" if x.nil? || y.nil?
		calculator.push(y/x)
	end

	def pop
		value = calculator.pop
		raise "calculator is empty" if value.nil?
		return value
	end

	def tokens(s)
		s.split.map do |t|
			case t
			when '+', '-' , '*', '/'
				t.to_sym
			else
				t.to_f
			end
		end
	end

	def evaluate(s)
		tokens(s).each do |t|
			case t
			when :+
				plus
			when :-
				minus
			when :*
				times
			when :/
				divide
			else
				push t
			end
		end
		value
	end
end
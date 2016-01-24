def add (x,y)
	x + y
end

def subtract (x, y)
	x - y
end

def sum (arr)
	if arr.empty?
		0
	else
		arr.inject(0) {|total, a| total + a} 
	end
end

def multiple (*arg)
	result = 1
	if arg != nil 
		arg.inject(1) {|a, product| product *= a}
	else
		result = 0
	end
end

def power (x, p)
	x ** p
end

def factorial (n)
	result = []
	if n <= 1
		n == 0 ? 0 : 1
	else
		return n * factorial(n-1)		
	end
end



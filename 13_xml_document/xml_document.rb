class XmlDocument
	def initialize(indent = false)
		@indent = indent
		@indent_level = 0
	end

	def method_missing(method_name, *args, &block)
		attributes = args[0] || {}
		s = ""
		if attributes == {} && block == nil
			s << "<#{method_name}/>"
		else	
			s << (" " *@indent_level) if @indent
			s << "<#{method_name}"
			attributes.each_pair do |key, value|
				s << " #{key}='#{value}'"
			end
			if block
				s << ">"
				s << "\n" if @indent 
				@indent_level += 2
				s << yield
				@indent_level -= 2
				s << (" "*@indent_level) if @indent
				s << "</#{method_name}>"
				s << "\n" if @indent
			else
				s << "/>"
				s << "\n" if @indent
			end
		end
		s
	end

	#def hello(*arg)
	#	if arg.empty?
	#		puts "<hello/>"
	#	elsif arg.is_a?(Hash)
	#		puts "<hello #{arg.keys}='#{arg[keys]}'>"
	#	elsif arg.is_a?(block)
	#		puts "<hello>yield</hello>"
	#	end	
	#end

end
#XmlDocument.new(true).method_missing("hello"){"dolly"}


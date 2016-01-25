class Timer
	attr_accessor :seconds

	def initialize(sec=0)
		@seconds = sec
	end

	def time_string
		if @seconds == 0
			h = 0
			m = 0 
			s = 0, 0, 0
		end
		h = @seconds / 3600
		m = @seconds % 3600 / 60
		s = @seconds % 3600 % 60
		sprintf("%02d:%02d:%02d", h, m, s)
	end
end
Timer.new(0)


#sprintf("%02d:%02d:%02d", 0, 0, 0)	


class MovieUnitsSold

	@@count = 0
	def initialize(movie)
		@movie = movie
	  @@count += 1
	end

	def self.count
		@@count
	end

end







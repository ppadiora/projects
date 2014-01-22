class Movie

	def initialize(name, price, stock)
		@name  =  name
		@price = price
		@stock = stock
	
	end

	attr_reader :name, :price, :stock

end

movie = Movie.new("love story", 10, 11) #creamos el objeto movie
MovieUnitsSold.new(movie).count #contador que se incrementa c/ q se vende la peli
CalculatePriceMovie.new(movie).price




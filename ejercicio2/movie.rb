class Movie

	def initialize(options)
		@name = options[:name]
		@price = options[:price]
		@stock = options[:stock]
		@sold = options[:sold]
	end

	attr_reader :name, :price, :stock, :sold

end



options = {title: "love story", price: 10, stock: 11, sold: 0 }
movie = Movie.new(options)
movie.sold +=1
CalculatePrice.new(movie).price






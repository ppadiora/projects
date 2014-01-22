class CalculatePriceMovie		
	def initialize(movie)
		@movie = movie
	end

	def price
		if more_than_three_month
			discount.ten_percent
		else less_than_ten_sold
			discount.twenty_percent
		end
	end

	private
		attr_reader :movie
		def discount
			Discount.new(movie.price)
		end

		def more_than_three_month
			movie.stock > 3
		end

		def less_than_ten_sold
			movie.sold <= 10 && movie.sold >= 1
		end
end

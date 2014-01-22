class CalculateStockPrice

	def initialize(product)
		@product = product
	end

	def calculate_price
		if less_than_12_months
			product.new_one
		elsif 12_and_24_months
			product.old_one
		else more_than_24_months
			product.liquidation
		end
	end

	private
	attr_reader :product

	def new_one
		product.base_price + 10
	end

	def old_one
		product.base_price + 5
	end

	def liquidation
		product.base_price - product.base_price * 0.4
	end

end
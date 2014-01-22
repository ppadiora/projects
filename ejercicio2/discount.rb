class Discount
 	def initialize(price)
 		@price = price
 	end

 	def ten_percent
 		price - price * 0.1
 	end

 	def twenty_percent
 		price - price * 0.2 
 	end

 	private 
 	attr_reader :price
 end
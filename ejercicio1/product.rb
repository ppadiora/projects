class Product

  def initialize(type, stock)
    @type = type
    @stock = stock
  end

  attr_reader :type, :stock

end

product = Product.new("cd", 4)







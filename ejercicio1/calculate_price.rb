class CalculatePrice
 
  def initialize(product)
    @product = product
  end

  def calculate_total
    base_price + vat + stock_price 
  end
  
  private
  attr_reader :product

  def base_price
    if product.type == "cd"
      6
    else
      8
    end
  end

  def vat
    if product.type == "cd"
      0.0150
    else
      0.0125
    end
  end

  def stock_price
    CalculateStockPrice.new(product)
  end

end
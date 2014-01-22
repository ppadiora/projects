require 'calculate_stock_price'

describe CalculateStockPrice do
	let(:product) { double(:product, type: stub, stock: stub)}
	let(:instance) { CalculateStockPrice.new(product) }

	describe "#calculate_price" do
		subject { instance.product }

		context "when the product is new because it's less than 12 months in stock" do
			let(:product) {double(:product, stock: stub)}
			
			before do
				product.stub(:stock).and_return(4)
			end

			it "return the base price of the product plus 10 " do
				expect(subject).to eql(16)
			end
		end

		context " when the product is old because it has been in stock between 12 and 24 months" do
			let(:product) {double(:product, stock: stub)}

			before do
				product.stub(:stock).and_return(15)
			end

			it "return the base price of the product plus 5" do
				expect(subject).to eql(11)
			end
		end

		context "when the product is in liquidation it has been more than 24 months in stock " do
			let(:product) {double(:product, stock: stub)}

			before do
				product.stub(:stock).and_return(27)
			end

			it "return the base price of the product with 40 percent of discount" do
				expect(subject).to eql(3.6)
			end
		end
	end
end
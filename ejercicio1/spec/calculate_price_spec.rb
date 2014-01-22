require 'calculate_price'

describe CalculatePrice do
	let(:product) { double(:product, type: stub, stock: stub)}
	let(:instance) { CalculatePrice.new(product) }

	describe "#calculate_total" do

		subject { instance.calculate_total }

		before do
			CalculateStockPrice.stub(:new).with(product).and_return(stock_price)
		end

		describe "#base_price" do
			subject {instance.product.type}

			context "when type of product is a CD" do
				let(:product) {double(:product, type: "cd")}

				it "return the base price of a CD" do
					expect(subject).to eql(6)
				end
			end

			context "when type of product is a DVD" do
				let(:product) {double(:product, type: "dvd")}

				it "return the base price of a DVD" do
					expect(subject).to eql(8)
				end
			end
		end

		describe "#vat" do
			subject {instance.product.type}

			context "when type of product is a CD" do
				let(:product) {double(:product, type: "cd")}

				it "return the vat price of a CD" do
					expect(subject).to eql(0.0150)
				end
			end

			context "when type of product is a DVD" do
				let(:product) {double(:product, type: "dvd")}

				it "return the vat price of a DVD" do
					expect(subject).to eql(0.0125)
				end
			end
		end
  end 
end
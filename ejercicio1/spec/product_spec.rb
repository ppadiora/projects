require 'product'

describe Product do
	let(:product) { double (:product, type: stub, stock: stub) }
	let(:instance) { Product.new(type, stock)}

	describe "#type" do
		subject { instance.type }

		it "return the type of the product" do
			expect(subject).to eql("cd")
		end
		
	end

	describe "#stock" do
		subject { instance.stock }

		it "return how many months that product has been in stock" do
			expect(subject).to eql(4)
		end
		
	end

end

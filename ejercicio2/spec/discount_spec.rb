require "discount"

describe Discount do
	let(:price) { 20 }
	let(:instance) { Discount.new(price) }

	describe "#ten_percent" do
		subject { instance.ten_percent }
		
		it "return the price with ten percent of discount" do
			expect(subject).to eql(18)
		end			
	end

	describe "#twenty_percent" do
		subject { instance.twenty_percent }

		it "return the price with twenty percent of discount" do
			expect(subject).to eql(16)
		end
	end

end
describe CalculatePriceMovie do
	let(:movie) { double(:movie, stock: stub, sold: stub, price: stub)}
	let(:instance) { CalculatePriceMovie.new(movie) }
	describe "#price" do

		subject { instance.price }

		before do
			Discount.stub(:new).with(movie.price).and_return(discount)
		end

		context "when is younger than three month" do
			let(:discount) {double(:discount, ten_percent: 13)}
			
			before do
				movie.stub(:stock).and_return(5)
			end

			it "return the price with ten percent of discount" do
				expect(subject).to eql(13)
			end
		end

		context " when is there are less than 10 sold" do
			let(:discount) {double(:discount, twenty_percent: 11)}

			before do
				movie.stub(stock: 2, sold: 7)
				# movie.stub(:stock).and_return(2)
				# movie.stub(:sold).and_return(7)
			end

			it "return the price with twenty percent of discount" do
				expect(subject).to eql(11)
			end
		end

  end
end
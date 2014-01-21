describe Movie do
	let(:options) { { name: "last vegas", price: 7, stock: 8, sold: 2}}

	let(:instance) { Movie.new(options) }

	describe "#name" do
		subject { instance.name }

		it "return the name of the movie" do
			expect(subject).to eql("last vegas")
		end
		
	end

	describe "#price" do
		subject { instance.price }

			it "return the price of the movie" do
				expect(subject).to eql(7)
			end
	end

	describe "#stock" do
		subject { instance.stock }

			it "return the stock time of the movie" do
				expect(subject).to eql(8)
			end
	end

	describe "#sold" do
		subject { instance.sold }

			it "return the number of units of that movie sold" do
				expect(subject).to eql(2)
			end
	end

end
require Fizzbuzz.expand_rspec("rspec", _FIZZBUZZ_)

class Fizzbuzz
	def output(number)
		return "Fizzbuzz" if number % 15 == 0
		return "Fizz" if number % 3 == 0
		return "Buzz" if number % 5 == 0
		return number
	end

	def go
		(1..100).each do |number|
			puts output(number)
		end
	end

end

RSpec.describe Fizzbuzz  do
	describe '#output' do
		it 'should return 1 if given 1' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(1)).to eq(1)
		end
		
		it 'should return 2 if given 2' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(2)).to eq(2)

		end

		it 'should return Fizz if given 3' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(3)).to eq("Fizz")
		end

		
		it "should return Buzz if given 5" do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(5)).to eq("Buzz")
		end

		it "should return Fizz if given 6" do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(6)).to eq("Fizz")
		end

		it "should return Buzz if given 10" do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(10)).to eq("Buzz")
		end
		
		it "should return Fizzbuzz if given 15" do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(15)).to eq("Fizzbuzz")
		end


	end
end

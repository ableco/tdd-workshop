require 'fizz_buzz'

describe 'FizzBuzz' do
    before(:each) do
        @fizz_buzz = FizzBuzz.new
    end
    
    it "displays fizz for a number divisble by 3" do
        @fizz_buzz.range = [1, 3]
        expected_result = "1, 2, fizz"
        expect(@fizz_buzz.show_result).to eq(expected_result)
    end

    it "displays buzz for a number divisible by 5" do
        @fizz_buzz.range = [4, 5]
        expected_result = "4, buzz"
        expect(@fizz_buzz.show_result).to eq(expected_result)
    end

    it "display fizzbuzz for a number divisible by 3 and 5" do 
        @fizz_buzz.range = [13, 16]
        expected_result = "13, 14, fizzbuzz, 16"
        expect(@fizz_buzz.show_result).to eq(expected_result)
    end

end
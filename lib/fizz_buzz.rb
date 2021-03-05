class FizzBuzz
    attr_accessor :range

    def show_result
        result_array = []
        (range[0]..range[1]).each do |num|
            if num % 3 == 0 && num % 5 == 0
                result_array << "fizzbuzz"
            elsif num % 3 == 0
                result_array << "fizz"
            elsif num % 5 == 0
                result_array << "buzz"
            else
                result_array << num
            end
        end

        result_array.join(', ')
    end
end
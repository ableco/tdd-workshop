class Hangman
    attr_accessor :word_teaser, :chances

    def initialize(word, clue)
        @word = word
        @clue = clue
        @chances = 7
        @word_teaser = ""
    
        @word.size.times do
          @word_teaser += "_ "
        end
        @word_teaser.strip!
    end

    def start_game
        initial_message = "Clue: #{@clue}, and has #{@word.size} letters: #{@word_teaser}"
    end
    
    def make_guess (guess)
        if @word.include?(guess)
            good_guess(guess)
        else
            bad_guess(guess)
        end
    end

    def good_guess(guess)
        update_teaser(guess)

        return "Congratulations! You guessed the word: #{@word.capitalize}" unless @word_teaser.include?("_")

        "Success! You have #{@chances} chances left: #{@word_teaser}"
    end

    def bad_guess(guess)
        @chances -= 1

        return "Game Over" if @chances == 0

        "Try again! You have #{@chances} chances left: #{@word_teaser}"
    end

    def update_teaser(guess)
        new_teaser = @word_teaser.split
    
        new_teaser.each_with_index do |letter, index|
          if letter == '_' && @word[index] == guess
            new_teaser[index] = guess
          end
        end
    
        @word_teaser = new_teaser.join(' ')
    end
end
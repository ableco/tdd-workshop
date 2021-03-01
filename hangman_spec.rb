require 'minitest/autorun'
require_relative './hangman'

class HangmanTest < Minitest::Test

    def test_initial_message
        hangman_game = Hangman.new("spain", "Country in Europe")
        assert_equal "Clue: Country in Europe, and has 5 letters: _ _ _ _ _", hangman_game.start_game
    end

    def test_make_a_correct_guess
        hangman_game = Hangman.new("spain", "Country in Europe")
        assert_equal "Success! You have 7 chances left: _ _ a _ _", hangman_game.make_guess("a")
    end

    def test_make_a_wrong_guess
        hangman_game = Hangman.new("spain", "Country in Europe")
        assert_equal "Try again! You have 6 chances left: _ _ _ _ _", hangman_game.make_guess("x")
    end

    def test_win_game
        hangman_game = Hangman.new("spain", "Country in Europe")
        hangman_game.word_teaser = "_ p a i n"
        assert_equal "Congratulations! You guessed the word: Spain", hangman_game.make_guess("s")
    end

    def test_game_over
        hangman_game = Hangman.new("spain", "Country in Europe")
        hangman_game.chances = 1
        assert_equal "Game Over", hangman_game.make_guess("x")
    end

end
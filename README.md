# TDD Workshop: The Hangman Kata

### Description

This kata is designed to help practice the TDD approach. Read the requirement below and start by writing a simple test then write the necessary code to make it pass (Repeat this process until you complete the requirement (Red-Green-Refactor Cycle)).

### Requirement

Build a Hangman Game that allows a user to guess a word based on a given clue. Consider the following information:

- The length and the clue of the word should be shown to the user. Initially the word is displayed with an underscore for each letter.
- The user has 7 chances before the game is over.
- When the user enters a letter that belongs to the word, it should display a success message with the remaining chances to play, and fill out the letter in the correct position of the word (e.g. _ a _ a).
- When the user enters a letter that doesn’t belong to the word, it should display a try again message with the remaining chances to play.
- When the user guesses all the letters, it should display the message ‘Congratulations, You Won!’.
- When the user runs out of chances to play, it should display the message ‘Game Over’.

### Setup

`bundle install`

### Running the tests

`bin/rspec`

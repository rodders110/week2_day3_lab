require_relative("../hidden_word")
require_relative("../player")
require_relative("../game")


puts = 'clear'
puts = "What is your secret word?"
word = gets.chomp().downcase!()

secret_word = Hidden_word.new(word)
game = Game.new("snowman")

while (secret_word.show_word.count() != game.guessed_letters.count()) do

  puts = "Take a guess of any letter"
  puts = "#{game.return_star_string}"

  guess = gets.chomp().downcase!()

  if (word.letter_present(guess) == true)
    

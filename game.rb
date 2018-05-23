class Game
  attr_accessor :guessed_letters

  def initialize(letter)
    @letter = letter
    @guessed_letters = []
  end

  def guess(hidden_word, word)
    return hidden_word.letter_present(word)
  end

  def add_to_guessed_letters(letter)
    @guessed_letters << letter
  end

  def return_star_string(hidden_word)
    string = ""
    if @guessed_letters.count() == 0
      for letter in hidden_word.show_word.split(//)
        if letter != " "
          string << "*"
        else
          string << " "
        end
      end
    else
    for letter in hidden_word.show_word.split(//)
      for word_letter in @guessed_letters
        if word_letter == letter
          string << letter
        elsif word_letter == " "
          string << " "
        else
          string << "*"
        end
      end
    end
  end
  return string
end

def win_lose(player, hidden_word)
  if player.lives_count == 0
    return "you lose!"
  elsif guessed_letters.count() == hidden_word.show_word.length()
    return "you win!"
  end
end
end

class Hidden_word

  def initialize(word)
    @word = word
  end

  def show_word
    return @word
  end

  def letter_present(letter)
    letter_array = @word.split(//)
    for character in letter_array
      if character == letter
        return true
      end
    end
    return false
  end

  def get_word(word)
    @word = word
  end
end

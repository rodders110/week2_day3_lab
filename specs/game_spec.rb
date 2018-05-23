require("minitest/autorun")
require("minitest/rg")

require_relative("../hidden_word")
require_relative("../player")
require_relative("../game")

class GameTest < MiniTest::Test
  def setup
    word = "codeclan"
    @hidden_word = Hidden_word.new(word)
    @player = Player.new("Billy Bob")
    @game = Game.new("Snowman", )
  end

  def test_can_take_a_guess
    assert_equal(true,@game.guess(@hidden_word,"e"))
    assert_equal(false,@game.guess(@hidden_word,"z"))
  end

  def test_can_add_to_guessed_letters
    @game.add_to_guessed_letters("c")
    assert_equal(1,@game.guessed_letters.count())
  end

  def test_can_return_word_as_star
    assert_equal("********",@game.return_star_string(@hidden_word))
  end

  def test_can_return_word_as_star__one_letter
    @game.add_to_guessed_letters("c")
    assert_equal("c***c***",@game.return_star_string(@hidden_word))
  end

  def test_can_win
    guess = "codeclan"
    for letter in guess.split(//)
      @game.add_to_guessed_letters(letter)
    end
    assert_equal("you win!", @game.win_lose(@player, @hidden_word))
  end
end

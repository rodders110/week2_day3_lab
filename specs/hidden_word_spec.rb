require("minitest/autorun")
require("minitest/rg")

require_relative("../hidden_word")

class HiddenWordTest < MiniTest::Test
  def setup
    @word = Hidden_word.new("ruby")
  end

  def test_can_display_word
    assert_equal("ruby", @word.show_word())
  end

  def test_can_display_true_or_false
    letter = "r"
    assert_equal(true, @word.letter_present(letter))
    assert_equal(false, @word.letter_present("z"))
  end

def test_can_get_word
  @word.get_word("diamond")
  assert_equal("diamond", @word.show_word())
end



end

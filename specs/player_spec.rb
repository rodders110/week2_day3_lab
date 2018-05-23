require("minitest/autorun")
require("minitest/rg")

require_relative("../player")


class PlayerTest < MiniTest::Test

  def setup
    @player = Player.new("Tommy")
  end

  def test_can_count_lives
    assert_equal(9, @player.lives_count())
  end

  def test_can_remove_life
    @player.remove_life()

    assert_equal(8, @player.lives_count())
  end

end

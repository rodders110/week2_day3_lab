class Player
  def initialize(name)
    @name = name
    @lives = 6
  end

  def lives_count()
    return @lives
  end

  def remove_life()
    @lives -= 1
  end
end

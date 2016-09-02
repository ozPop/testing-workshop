class Bowling
  attr_reader :score
  def initialize
    @score = 0
  end

  def roll(pin_count)
    self.score = pin_count
  end

  def score=(score)
    @score += score
  end

end

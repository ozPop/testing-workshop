class Bowling
  attr_accessor :frame, :score, :count
  def initialize
    @score = 0
    @frame = [0,0,0]
    @game = []
    @count = 0
  end

  def roll_strike(pin_count)
    self.score += (@frame[-1]*2 + @frame[-2])
    self.frame << pin_count 
  end

  def spare(pin_count)
    self.score += pin_count*2
    self.frame << pin_count
  end

  def roll(pin_count)
    @count += 1
    if @frame[-2] == 10
      self.frame << pin_count 
      (self.score += pin_count and return ) if self.frame.count(10) == 11
      roll_strike(pin_count)
    elsif @frame[-1] + @frame[-2] == 10 && @count.odd?
      spare(pin_count)
    else
      self.frame << pin_count 
      self.score += pin_count
    end
    # end
  end
end

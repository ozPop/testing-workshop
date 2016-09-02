class Bowling
  attr_accessor :frame, :strike
  attr_reader :score
  def initialize
    @score = 0
    @frame = []
    @strike = 'off'
  end

  def roll(pin_count)
    if strike == 'on'
        self.frame << pin_count 
      if @frame.size == 2 
        self.score = @frame.reduce(:+)
        self.frame.clear
        self.strike = 'off'
      end
    else
      if @frame[0] == 10
        self.strike = 'on'
      elsif @frame.size < 2
        self.frame << pin_count 
        self.score = pin_count
      elsif @frame.reduce(:+) == 10
        self.score = pin_count*2
        self.frame.clear
        self.frame << pin_count
      else
        self.score = pin_count
      end
    end
  end

  def score=(score)
    @score += score
  end

end

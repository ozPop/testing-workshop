
class Bowling
  attr_accessor :frame
  attr_reader :score
  def initialize
    @score = 0
    @frame = []
  end

  def roll(pin_count)
    if @frame.size < 2
      # binding.pry
      self.frame << pin_count 
      self.score += pin_count
    # this is a spare
    elsif @frame.size == 2 && @frame.reduce(:+) == 10
      # binding.pry
      self.score += pin_count*2
      self.frame.clear
      self.frame << pin_count
    end
      
  end

  def score=(score)
    @score += score
  end

end

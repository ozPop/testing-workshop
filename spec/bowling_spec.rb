require 'spec_helper'

describe "Bowling basics" do
  describe '#initialize the game' do
    it 'initializes game' do
      game = Bowling.new
      expect(game).to be_a(Bowling)
    end
  end

  describe '#gutter game' do
    it 'returns 0 when all turns are 0' do
      bowling = Bowling.new
      20.times { bowling.roll(0)}
      expect(bowling.score).to eq(0)
    end
  end
end

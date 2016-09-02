require 'spec_helper'

describe "Bowling basics" do
  describe '#initialize the game' do
    it 'initializes game' do
      game = Bowling.new
      expect(game).to be_a(Bowling)
    end
  end
end



# describe "Song Basics" do
#     it 'accepts a name for the song' do
#       song = Song.new("In an Aeroplane Over the Sea")
#       expect(song.name).to eq("In an Aeroplane Over the Sea")
#     end
#   end

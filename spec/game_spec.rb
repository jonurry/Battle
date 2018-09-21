require "./lib/game"

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, :name => "Florence", :hit => 50 }
  let(:player_2) { double :player, :name => "Jon", :hit => 50 }
  
  describe '#initialize' do
    it "should know that player_1 is Florence" do
      expect(game.player_1.name).to eq("Florence")
    end
  end

  describe "#attack" do
    it 'calls #hit on player 2' do
      expect(player_2).to receive(:hit)
      game.attack(player_2)
      # expect(game.attack(player_2)).to eq (game.player_2.hit)
    end
  end
end

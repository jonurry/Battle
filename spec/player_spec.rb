require 'player'

describe Player do
  subject(:player) { described_class.new('Jon') } 
  it "should store the player's name" do
    expect(player.name).to eq 'Jon'
  end
end

require 'player'

describe Player do
  subject(:player) { described_class.new('Jon') }
  it "should store the player's name" do
    expect(player.name).to eq 'Jon'
  end

  it 'should remove 10 HP from player 2' do
    player.hit(10)
    expect(player.health).to eq 90
  end
end

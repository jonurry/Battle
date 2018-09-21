require_relative "player"

class Game
  
  attr_reader :player_1, :player_2

  def self.create(player_1, player_2)
    @@game = Game.new(player_1, player_2)
  end

  def self.instance
    @@game
  end

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player, strength_of_attack = 10)
    player.hit(strength_of_attack)
  end

end
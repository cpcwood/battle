# frozen_string_literal: true

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def return_player(player_number)
    player_number == 1 ? @player1 : @player2
  end

  def attack_player(player_number, hp)
    return_player(player_number).reduce_hit_points(hp)
  end
end

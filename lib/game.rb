# frozen_string_literal: true

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player_1_turn = true
  end

  def return_player(player_number)
    player_number == 1 ? @player1 : @player2
  end

  def attack_player(hp)
    opponent.reduce_hit_points(hp)
    change_turn
  end

  def current_player
    @player_1_turn ? @player1 : @player2
  end

  def game_over?
    [@player1, @player2].any?{|player| player.hit_points <= 0}
  end

  def winner
    [@player1, @player2].sort_by{|player| player.hit_points}[1].name
  end

  private

  def change_turn
    @player_1_turn = !@player_1_turn
  end

  def opponent
    !@player_1_turn ? @player1 : @player2
  end
end

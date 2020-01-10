class Game
  def self.create(player1, player2)
    @@game = self.new(player1, player2)
  end

  def self.game_instance
    @@game ||= nil
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @player_1_turn = true
  end

  def return_player(player_number)
    @players[player_number - 1]
  end

  def attack_player(hp)
    opponent.reduce_hit_points(hp)
    change_turn
  end

  def current_player
    @player_1_turn ? @players[0] : @players[1]
  end

  def game_over?
    @players.any?{|player| player.hit_points <= 0}
  end

  def winner
    @players.max{|a, b| a.hit_points <=> b.hit_points}.name
  end

  private

  def change_turn
    @player_1_turn = !@player_1_turn
  end

  def opponent
    !@player_1_turn ? @players[0] : @players[1]
  end
end

class Player
  attr_reader :name, :hit_points
  DEFAULT_POINTS = 100
  DEFAULT_NAME = 'Player'

  def initialize(name: DEFAULT_NAME, hp: DEFAULT_POINTS)
    name.empty? ? @name = DEFAULT_NAME : @name = name
    @hit_points = hp
  end

  def reduce_hit_points(hp)
    @hit_points -= hp
  end
end

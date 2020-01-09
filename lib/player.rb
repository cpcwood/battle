# frozen_string_literal: true

class Player
  attr_reader :name, :hit_points

  def initialize(name, hit_points = 60)
    @name = name
    @hit_points = hit_points
  end

  def reduce_hit_points(hp)
    @hit_points -= hp
  end
end

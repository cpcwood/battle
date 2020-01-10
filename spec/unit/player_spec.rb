require 'player'

describe Player do

  describe '#name' do
    it 'returns a name when called' do
      chris = Player.new(name: 'Chris')
      expect(chris.name).to eq('Chris')
    end
    it 'returns default name' do
      expect(subject.name).to eq(Player::DEFAULT_NAME)
    end
  end

  describe '#hit_points' do
    it 'returns hit_points when called' do
      expect(subject.hit_points).to eq(Player::DEFAULT_POINTS)
    end
    it 'custom hitpoint can be set' do
      subject = Player.new(hp: 50)
      expect(subject.hit_points).to eq(50)
    end
  end

  describe '#reduce_hit_points' do
    it 'reduces defualt hit points by amount entered' do
      expect(subject.reduce_hit_points(10)).to eq(Player::DEFAULT_POINTS - 10)
    end
  end
end

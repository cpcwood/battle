require 'player'

describe Player do
  describe '#name ' do
    it 'returns a name when called' do
      subject = Player.new('Ben')
      expect(subject.name).to eq('Ben')
    end
  end

  describe '#hit_points' do
    it 'returns hit_points when called' do
      subject = Player.new('Ben')
      expect(subject.hit_points).to eq(60)
    end
  end

  describe '#reduce_hit_points' do
    it 'reduces defualt hit points by amount entered' do
      subject = Player.new('Ben')
      expect(subject.reduce_hit_points(10)).to eq(50)
    end
  end
end

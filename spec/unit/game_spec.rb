require 'game'

describe Game do

  let(:player1) {double :player1, :reduce_hit_points => nil}
  let(:player2) {double :player2, :reduce_hit_points => nil}
  subject{Game.new(player1, player2)}

  describe '#return player ' do
    it 'returns the player when called' do
      expect(subject.return_player(1)).to eq(player1)
    end
  end
  describe '#attack player' do
    it 'reduces hit points to nill' do
    expect(player1).to receive(:reduce_hit_points).with(10)
    subject.attack_player(1,10)
    end
  end
end
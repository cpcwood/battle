require 'game'

describe Game do

  let(:player1) {double :player1, :reduce_hit_points => nil, :hit_points => 0}
  let(:player2) {double :player2, :reduce_hit_points => nil, :hit_points => 20, :name => 'Ben'}
  subject{Game.new(player1, player2)}

  describe '#return player ' do
    it 'returns the player when called' do
      expect(subject.return_player(1)).to eq(player1)
    end
  end
  describe '#attack player' do
    it 'reduces hit points to nill' do
      expect(player2).to receive(:reduce_hit_points).with(10)
      subject.attack_player(10)
    end
    it 'switches the turn of the player' do
      subject.attack_player(10)
      expect(player1).to receive(:reduce_hit_points).with(10)
      subject.attack_player(10)
    end
  end
  describe '#game_over?' do
    it 'returns true is a player is dead' do
      allow(player1).to receive(:hit_points).and_return(0)
      expect(subject.game_over?).to eq true
    end
  end
  describe 'winner' do
    it 'returns winners name' do
      expect(subject.winner).to eq 'Ben'
    end
  end
end

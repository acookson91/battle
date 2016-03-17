require 'game'

describe Game do
  let(:player1) { double:player1}
  let(:player2) { double:player2}
  subject(:game) { described_class.new(player1, player2) }


  describe "#attack" do
    it 'damages the player' do
      expect(player1).to receive(:be_attacked)
      game.attack(player1)
    end
  end
end

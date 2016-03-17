require 'game'

describe Game do
  let(:player1) { double:player1, name: "andrew"}
  let(:player2) { double:player2, name: "nick"}
  subject(:game) { described_class.new(player1, player2) }


  describe "#attack" do
    it 'damages the player' do
      expect(player1).to receive(:be_attacked)
      game.attack(player1)
    end
  end

  describe '#change_player' do
    it 'Switches the player' do
      game.change_player
      expect(game.player_1.name).to include "nick"
    end
  end

end

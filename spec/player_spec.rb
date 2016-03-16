require 'Player'

describe Player do
  subject(:player) {described_class.new("Brian")}

  describe "#name" do
    it "player has a name" do
      expect(player.name).not_to be nil
    end
  end
end
